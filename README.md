# CONKY CONFIGURATION FILE

This file is my personal conky setup used in a ThinkPad T430  

### credits  
I based my conky configuration file on:  
[neoncipher](http://neoncipher.net/v/conky/)  
and  
[kosteron](https://github.com/Kosteron/Conky)
  
Official Conky repo  
[conky](https://github.com/brndnmtthws/conky )  
 

# Hardware where this config is used on  
### cpu
i7-3540m
### OS
PoP_OS! (Debian based )
### screen
HD+ (1600 x 900)

![Example](./main.png?raw=true "Example")

# Intro
This repo is a safekeeping of my personal conky setup. I based my conky on the repos mentioned in the credits and altered them so they fit my idea.

## Features
- Show and Monitor computer metric like processor use etc...
- Show local weather (Use the awesome http://wttr.in/ to show the local weather)
- Show a little calendar

# SETUP
This part contains some general info on the layout and possible changes that can be made.  

## general data
system information  
date  
time  
uptime  
file system type (remove # to display)  

## network information
Displays my wifi connection, in order to use your data replace wlp3s0 with your network interface name.  
You can find the name with the following command:  
  
**terminal**
```bash
$ nmcli dev status
```   

replace all occurances of my interface name with your own.  

## cpu information
Displays overall load on my cpu.  
If you want to see each core seperatly uncomment the cores and add as many as needed.  

```bash
#Core1 ${cpu cpu1}% ${cpubar cpu1}
#Freq: ${freq 1}MHz
``` 

Threads are also seen as seperate cores, so i can display 4 total 2cores/4thread cpu.  

## memory
Displays RAM usage
  
## storage
Displays my available storage for my /home directory.  
You can display other directorys by replacing /home with the directory you would like to display.  

Read and Write activity.  

## temperatures
This part displays the temperature of the cpu.
If nothing is showing replace the hwmon 3 value with:  
hwmon 0 or  
hwmon 1 or  
hwmon 2  

This can be different on each machine, the temp 1 or temp 2 will select the core to display information from.  
In my case i display the temp for my 2 cores.

## running processes
This section displays the 5 most memory intensive processes.  

# ADJUSTMENTS
This part will explain some general options for conky.  
With these you will be able to alter the config file as you like.  

## colours
You can select your own colors with rgb values 
```
${color #3b71a1}
```  

## placement
You can offset elements in a horizontal and vertical way.  
Horizontal offset example:
```
# this will offset the next item 5 pixels up (5 would be down)
${voffset -5}
```

## graphs
You can use a bar / graph of gauge to display your data.

## conkyrc-weather

If you want to change the location of the local weather, please edit the bash script **weather-pull.sh** and change the following line :
```bash
curl "http://wttr.in/antwerpen?T&1&Q&F&lang=nl" --silent --max-time 3 > /tmp/weather.tmp
```
by what you want, for example London : 
```bash
curl "http://wttr.in/london?T&1&Q&F" --silent --max-time 3 > /tmp/weather.tmp
```
You can find more parameter and option on the wttr.in [Github repository](https://github.com/chubin/wttr.in).

## Installation

For those who want to try this conky's themes, here’s a step by step how to setup guide:

**1.** First of all, open terminal and install conky if you don’t have it via command:

```bash
sudo apt-get install conky
```

you may want to install optionnal package, please refer to the table below

**2.** Clone this repository

**3.** Copy all folder to `~/.conky` (set hidden file to visible on your file manager cause the folder is hidden) or create this folder if it doesnt exist :
```bash
mkdir ~/.conky
mv Conky-master/* ~/.conky
```

**4.** Open terminal and type
```bash
cd ~/.conky/
./conky-launch.sh
```

**5.** Move the font to your font folder :
```bash
sudo mv ~/.conky/fonts/* /usr/share/fonts
```

**6.** You may have to change some parameters like resolution or position to match your actual linux desktop characteristics.
So edit **conky-rc** file and change this kind of parameter for the position on your screen :
```
conky.config = {
...
gap_x = 10,
gap_y = 520,
...
};
```

Edit the **conky-launch.sh** and uncommet or comment the lines corresponding to the widgets you don't want
To automatically run when startup, just add conky-launch.sh to autostart.

## more conky info
You can find more info on all possible elements here:
[Conky elements](http://conky.sourceforge.net/variables.html)


