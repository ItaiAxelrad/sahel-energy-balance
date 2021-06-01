# login (add the -Y for GrADS)
ssh -Y m206axe@nicco.sscnet.ucla.edu
axe310@ucla
# create and go to final directory
cd
mkdir final
cd final
#copy the control files for control case (SEBEX)
cp -r /nicco1/u/classes/m206hua/final_project/sebex/ ./
#copy the control files for degradation case (veg type9)
cp -r /nicco1/u/classes/m206hua/final_project/type9/ ./
#copy the ssib2 output results to your local account
cp -r /nicco1/u/classes/m206hua/final_project/scripts/ ./

#if you want to run the model yourself
#go to your final directory
cd /nicco1/u/classes/m206axe/final
#copy the code for control case (SEBEX)
cp -r /nicco1/u/classes/m206hua/final_project/sebex/ ./
#copy the code for degradation case (veg type9)
cp -r /nicco1/u/classes/m206hua/final_project/type9/ ./

# run the sebex model
cd /nicco1/u/classes/m206axe/final
mv sebex sebex_bk #???
#backup the output before you run the model
cd sebex
cd src
./mk
cd ../../
ls
mv sebex1988outn sebex
mv sebex ../
cp ../sebex_bk/*.ctl ./

# run the type9 model
cd /nicco1/u/classes/m206axe/final
mv type9 type9_bk
#backup the output before you run the model
cd ssib2_type9
cd ssib2/src
./mk
cd ../../
ls
mv sebex1988outn type9
mv type9 ../
cp ../type9_bk/*.ctl ./

#open GrADS
grads
#run the following scripts:
#c
run cbar_line.gs
#d
run d_grdflx.gs
run d_lat.gs
run d_netrad.gs
run d_sen.gs
run d_ta.gs
#e
run ect.gs
run egs.gs
run evap.gs
#g
run ghtflx.gs
run gpp.gs
#i
run interloss.gs
#l
run latent.gs
#n
run netrad.gs
run npp.gs
#p
run precip.gs
#r
run roff.gs
#s
run sensible.gs
run smois1.gs
run smois2.gs
run smois3.gs
#t
run ta.gs
run tc.gs
run td.gs
run tgs.gs
run tmp_td.gs
run tmp_tgs.gs
run tmp_ttc.gs