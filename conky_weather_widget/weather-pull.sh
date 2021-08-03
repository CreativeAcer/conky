#/bin/bash
function weather-pull {
	while true 
	do
		curl "http://wttr.in/brasschaat?T&1&Q&F&lang=nl" --silent --max-time 3 > /tmp/weather.tmp
		sleep 600	
	done
}
weather-pull
