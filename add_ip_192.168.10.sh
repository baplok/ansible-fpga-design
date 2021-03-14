for a  in {01..30}; do 
    #echo "st4231b-$a WiFi MAC: $(ssh -o StrictHostKeyChecking=accept-new st4231b-$a.sipc.miet.ru ip addr | grep -A 2 wlp | grep ether)"; \
    ssh -o StrictHostKeyChecking=accept-new st4231b-$a.sipc.miet.ru sudo ip addr add "192.168.10.$(ip addr show eno1 | grep "inet 172"| sed "s/^.*inet 172\.20\.42\.\([0-9]*\).*/\1/")/24" brd + dev eno1
done
