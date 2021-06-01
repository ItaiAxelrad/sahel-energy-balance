#see results in sebex1988outn
cd ssib2/
ls
cd ssib2_code/
ls
cd sebex1988outn
ls
# copy model results (grib) to scripts
cp -r aved1.gra ../../scripts/
cp -r dyly1.gra ../../scripts/
# using control files to check the output
cd ../../scripts/
ls
# using control file to check the output in grads
grads
open aved_rev.ctl
q file
set t 1 last
d ta

# Draw figures using scripts
reinit
open hrly_rev.ctl
set display color white
c
set grads off
set xlopts 1 3 0.18
set ylopts 1 3 0.18
set time 23z30jun89 23z01jul89
define dsta =ave(ta,t+1,t=9632,24hr)
set vrange 0 50
set ccolor 2
set cthick 4
set cmark 5
d dsta-273.16
draw title \July-August-September
1989 \Canopy Air Space Temp (C)
Diurnal Cycle’
./cbar_line -x 2.5 -y 7.5 -c 2 -m 5 -l 1 -t
"sebex"
printim JASdi_ta.gif

# Check the results using grads
run gpp.gs

# Or use scripts files for plotting!
reinit
run d_ta.gs

# Check the results using grads
reinit
sdfopen ../control/mthly.nc
set display color white
c
set grads off
set xlopts 1 3 0.18
set ylopts 1 3 0.18
set time 01jan1989 01jan1990
set vrange 1200 1600
set ccolor 2
set cmark 3
d gppout*10e-12*12*365*24*60*60
cbar_line -x 2.5 -y 7.5 -c 2 -m 3 -l 1 -t
"sebex"
draw title SSIB monthly GPP [gC/m2/year]
printim ect.gif gif x1280 y1024 white