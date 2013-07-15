#!/bin/sh
synclient MaxSpeed=7
synclient AccelFactor=.125
synclient HorizScrollDelta=-125
synclient VertScrollDelta=-79
#synclient HorizHysteresis=10
#synclient VertHysteresis=10
synclient CoastingSpeed=10 #allows momentum scrolling
synclient CoastingFriction=25 #how fast the momentum fades
synclient PalmDetect=0
#synclient MaxTapTime=250
synclient HorizTwoFingerScroll=1
synclient AreaLeftEdge=150

setsid touchegg
