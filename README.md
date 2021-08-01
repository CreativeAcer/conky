# CONKY CONFIGURATION FILE

This file is my personal conky setup used in a ThinkPad T430  
Hardware where this config is used on  
### cpu
i7-3540m
### OS
PoP_OS! (Debian based )
### screen
HD+ (1600 x 900)

![Example](./main.png?raw=true "Example")

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

## more conky info
You can find more info on all possible elements here:
[Conky elements](http://conky.sourceforge.net/variables.html)


