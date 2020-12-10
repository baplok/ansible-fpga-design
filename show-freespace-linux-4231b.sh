for a  in {01..30}; do 
    echo "st4231b-$a:"
    echo "$(ssh -o StrictHostKeyChecking=accept-new st4231b-$a.sipc.miet.ru df -h | grep /dev/sd)"; 
done
