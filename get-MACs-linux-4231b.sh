for a  in {01..30}; do echo "st4231b-$a WiFi MAC: $(ssh -o StrictHostKeyChecking=accept-new st4231b-$a.sipc.miet.ru ip addr | grep -A 2 wlp | grep ether)"; done
