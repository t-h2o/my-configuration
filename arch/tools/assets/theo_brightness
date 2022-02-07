max=4882
last_value=`cat /sys/class/backlight/intel_backlight/brightness`

echo -e "max value\t$max"
echo -e "last value\t$last_value"
echo -e "new value\t$1"

echo "$1" > /sys/class/backlight/intel_backlight/brightness
