while true; do
echo - | awk "{printf \"%.1f\", $(( $(cat /sys/class/power_supply/BAT0/current_now) * $(cat /sys/class/power_supply/BAT0/voltage_now))) / 1000000000000 }W" 
echo 
sleep 4
done
