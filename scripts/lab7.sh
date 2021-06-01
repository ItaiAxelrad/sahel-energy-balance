# Off-line testing: Land use and land cover change
# If your are using mac
scp -r username@nicco.sscnet.ucla.edu:/nicco1/u/class/m206hua/M206_Week7_2018Spring.pptx ./Desktop

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

# go to the final/script directory. The scripts for figure
cd ./final/scripts
plotting has already been prepared in scripts directory

# Replace the gif output in gs file with png output
sed -i 's/gif/png/g' *.gs

# open grads
grads

# Now you can display the figures in grads window and save it at the same time
run evap.gs

# Exit the grads
quit
ls
# go to tables directory
cd tables
# the scripts generating tables for water and energy
ls
balance

# open grads
grads

# run m_sm_sebex.gs scripts, m_soil_mosit.txt will be generated
run m_sm_sebex.gs
quit
vim m_soil_mosit.txt

# run other scripts