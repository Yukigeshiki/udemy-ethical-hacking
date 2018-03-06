export ip_addr="$(nslookup ${DNS} | grep 'Address: ' | awk -F " " '{print $2}')"

sudo hping3 -i u100 -S -p 80 ${ip_addr}
