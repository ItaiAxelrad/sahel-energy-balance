# Login and data copy - Get the SSiB2 code on nicco
# Create a directory for ssib2 run
mkdir ssib2
# go to the ssib2 run directory
cd ssib2
# copy the ssib2 code to your local account
cp -r /nicco1/u/classes/m206hua/ssib2_code ./
# copy the scripts to your local account
cp -r /nicco1/u/classes/m206hua/scripts ./
ls
# /ssib2_code/ -> ssib2 code source and input files
# /scripts/ -> scripts for plotting figures
cd ssib2_code/
ls
cd data
ls
cd ../
ls
cd ssib2/src/
ls
vi mk
#executable bash scripts: bin/bash
#compile the SSiB2 code
f95 ANGS2.F ANGSA.F averages.f averagesout.f consts.f crout.f DELEF.F
DELHF.F delrn.f determ.f doy.f errors.f \fit2.f FUNCTIONEX.F GMUPI.F
hrlyout.f interc.f longr2.f longrn.f newton.f radab.f radc2.f radus2.f raduse.f
rasit5.f \rbrd1.f root1.f run2.f sm.f snowm.f ssib2run.f STATIST.F stoma1.f
STRES1.F temrs1.f UPDAT1.F vegin1.f -o ../run.x
#run the model
cd ..
./run.x
rm –f fort.*
#you can also run the model by executing mk
./mk
#see results in sebex1988outn
cd ../
cd ../
cd sebex1988outn
ls