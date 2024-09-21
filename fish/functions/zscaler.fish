function zscaler --description "notify when this crapware reconnects to internet"
    echo (date '+%F %T') - start
    while not ping -c 1 google.com
        sleep 5
    end
    tput bel
    echo (date '+%F %T') - online
end
