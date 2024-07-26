#! /usr/bin/env python3

import itertools
import sys

def generate_combinations(s):
    underscore_indices = [i for i, char in enumerate(s) if char == '_']

    combinations = set()

    # Generate combinations where each underscore can either remain or be replaced with double underscores
    for num_replacements in range(1, len(underscore_indices) + 1):
        for positions in itertools.combinations(underscore_indices, num_replacements):
            temp_list = list(s)
            for pos in positions:
                temp_list[pos] = '__'
            combinations.add(''.join(temp_list))

    return sorted(combinations)

for result in generate_combinations(sys.argv[1]):
    print(result)
