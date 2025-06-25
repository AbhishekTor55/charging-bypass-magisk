#!/system/bin/sh
LOG_FILE=/sdcard/charging_bypass.log
echo "$(date): ChargingBypass v3 Started" >> $LOG_FILE

while true; do
  screen_state=$(dumpsys display | grep -i "mScreenState")

  if echo "$screen_state" | grep -q "ON"; then
    setenforce 0
    echo 0 > /sys/class/power_supply/battery/charging_enabled
    echo "$(date): Screen ON -> Charging Disabled" >> $LOG_FILE
  else
    echo 1 > /sys/class/power_supply/battery/charging_enabled
    echo "$(date): Screen OFF -> Charging Enabled" >> $LOG_FILE
  fi

  sleep 1
done
