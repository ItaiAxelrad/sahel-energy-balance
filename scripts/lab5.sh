# Off-line testing: Land use and land cover change
# Get result files for final project on nicco
cd
mkdir final
# go to the final directory
cd final

# copy the control files for control case (SEBEX)
cp –r /nicco1/u/classes/m206hua/final_project/sebex/ ./

# copy the control files for degradation case (veg type9)
cp –r /nicco1/u/classes/m206hua/final_project/type9/ ./

# copy the ssib2 output results to your local account
cp –r /nicco1/u/classes/m206hua/final_project/scripts/ ./

# If you want to run the model yourself

# go to your final directory
cd /nicco1/u/classes/your_id/final

# copy the codefor control case (SEBEX)
cp –r /nicco1/u/classes/m206hua/final_project/ssib2_sebex/ ./

# copy the code for degradation case (veg type9)
cp –r /nicco1/u/classes/m206hua/final_project/ssib2_type9/ ./

# some simple steps
cd /nicco1/u/classes/your_id/final
# backup the output before you run the model
mv sebex sebex_bk
cd ssib2_sebex
cd ssib2/src
./mk
cd ../../
ls
mv sebex1988outn sebex
mv sebex ../
cp ../sebex_bk/*.ctl ./
cd /nicco1/u/classes/your_id/final
mv type9 type9_bk
*backup the output before you run the model
cd ssib2_type9
cd ssib2/src
./mk
cd ../../
ls
mv sebex1988outn type9
mv type9 ../
cp ../type9_bk/*.ctl ./