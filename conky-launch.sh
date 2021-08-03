#!/bin/env sh

killall conky

# Start computer monitoring widget (based on Mainte conky script)
conky -c $HOME/.conky/conky_main_info/conkyrc-computer-metrics &

# start weather widget
sleep 0.8
bash $HOME/.conky/conky_weather_widget/weather-pull.sh &
sleep 1
conky -c $HOME/.conky/conky_weather_widget/conkyrc-weather &

# start clock widget
sleep 0.8
conky -c $HOME/.conky/conky_clock_widget/conkyrc-clock &