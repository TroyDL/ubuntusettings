#!/bin/sh
synclient MaxSpeed=7
synclient AccelFactor=.125
synclient HorizScrollDelta=-125
synclient VertScrollDelta=-60
#synclient HorizHysteresis=10
#synclient VertHysteresis=10
synclient CoastingSpeed=1 #allows momentum scrolling
synclient CoastingFriction=2 #how fast the momentum fades
synclient PalmDetect=0
#synclient MaxTapTime=250
synclient HorizTwoFingerScroll=1
synclient AreaLeftEdge=200

setsid touchegg
