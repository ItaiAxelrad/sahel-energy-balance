# Copy directory grads_example to your workspace as shown below
cp –r -vf /home8/xue/idiallo/Lab1/grads_example .
cd grads_example
ls

jun2009.ctl
flx.ft06.200906
flx.ft06.200906.idx
cbar.gs
atribtmpsfc1.gs
atribtmpsfc2.gs

# GrADS’s command and display
grads
# Open file jun2009.ctl in GrADS
open jun2009.ctl
# `q file` allows you to see what is on the data file: variables, their dimensions, the spatial and temporal coverage of the data, etc.
q file

# Displaying the surface temperature field in shaded contour plots
set gxout shaded
c
d tmpsfc
cbar

# Displaying the surface temperature field in shaded contour plots
set gxout shaded
c
d tmpsfc
cbar

# Displaying the surface temperature field in shaded with focus over North & South America
set gxout shaded
set display color white
set lat -75 75
set lon -130 -30
c
d tmpsfc
cbar

# Displaying the surface temperature field in shaded focus over USA
set gxout shaded
set map 1 1 12
set lon -130 -70
set lat 22 50
d tmpsfc
cbar

# Displaying the 2-meter temperature at one grid point & adding a Title
c
# Time values set: 2009:6:1:0 2009:6:30:18
set t 1 120
# LAT set to 33.333 33.333
set lat 34
# LON set to -118.125 -118.125
set lon -118
# ccolor = 4
set ccolor 4
d tmp2m
draw title Jun 2009 2m Temp [K] at lat=34N lon=118W (LA)

# Calculating the average temperature at lat=34N and lon=118W between Jun 1st and Jun 30th (i.e. Jun average)
ga-> c
# LAT set to 33.333 33.333
ga-> set lat 34
# LON set to -118.125 -118.125
ga-> set lon -118
# Time values set: 2009:6:1:0 2009:6:1:0
ga-> set t 1
# Averaging. dim = 3, start = 1, end = 120
ga-> d ave(tmp2m-273.16,t=1,t=120)
# Result value = 16.7598

# Calculating the average temperature over the USA at the 50th day
# LON set to 0 0
ga-> set x 1
ga-> set y 1
# LAT set to -88.542 -88.542
# Time values set: 2009:6:15:0 2009:6:15:0
ga-> set time 15jun
ga-> d aave(tmp2m-273.16,lon=-130,lon=-60,lat=20,lat=50)
# Result value = 23.6601