function zscaler --description "notify when this crapware reconnects me to internet"
    while not ping -c 1 google.com
        sleep 1
    end
    echo (date '+%F %T') - online
    tput bel
end
