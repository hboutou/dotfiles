#! /usr/bin/env -S uv run --script
# /// script
# requires-python = ">=3.13"
# dependencies = [
#     "boto3",
# ]
# # better reproducibility
# # [tool.uv]
# # exclude-newer = "2025-01-25T00:00:00Z"
# ///
"""Redrive DLQ messages"""

import argparse
import json
import time

import boto3


def aws_account(session) -> str:
    sts = session.client('sts')
    try:
        return sts.get_caller_identity()['Account']
    except Exception as e:
        quit('Expired token')


def redrive(session, dlq_url, main_queue_url, max_size=10):
    sqs = session.client('sqs')
    try:
        # read dlq
        response = sqs.receive_message(
            QueueUrl=dlq_url,
            MaxNumberOfMessages=max_size,
            WaitTimeSeconds=0,
        )
        
        if 'Messages' not in response:
            print("No messages in DLQ.")
            return
        
        messages = response['Messages']
        
        # redrive each message
        for i, message in enumerate(messages, start=1):
            sqs.send_message(QueueUrl=main_queue_url, MessageBody=message['Body'])
            sqs.delete_message(QueueUrl=dlq_url, ReceiptHandle=message['ReceiptHandle'])
            print(f"{i:>2} {message['MessageId']}")
    
    except Exception as e:
        print(f"Error processing DLQ messages: {e}")


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument('-q', '--queue', type=str, required=True)
    parser.add_argument('-p', '--profile', type=str, default='default')
    parser.add_argument('-s', '--size', type=int, default=10, choices=range(1, 11))
    args = parser.parse_args()

    session = boto3.Session(profile_name=args.profile)
    account = aws_account(session)

    que_url = f'https://sqs.{session.region_name}.amazonaws.com/{account}/{args.queue}'
    dlq_url = f'https://sqs.{session.region_name}.amazonaws.com/{account}/{args.queue}-dlq'

    redrive(session, dlq_url, que_url, max_size=args.size)
