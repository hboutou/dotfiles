function zscaler --description "notify when this crapware reconnects to internet"
    echo (date '+%F %T') - start
    while not ping -c 1 1.1.1.1; end
    tput bel
    echo (date '+%F %T') - online
    python3 -c "from datetime import timedelta; print('offline for', timedelta(milliseconds=$CMD_DURATION), 'thanks zscaler')"
end
