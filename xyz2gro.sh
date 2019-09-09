#!/bin/bash

#script that converts xyz files to gro files (the xyz file contains only carbons and hydrogen atoms)
#Relevant script for heterocarbon structures, will be commited next time.

echo 'reads the last step from the steepest minimization'
echo 'none'

# our the script is quite unformal at this stage (however it works)
# The file is passed by in the next string 
# please uncomment any one of the following three lines 
# one case is to work with the cone with 2 pentagons 
 
file="2p_1022c.xyz"
#file="3p_1077.xyz"
#file="4p_1040c.xyz"

# We label the output file  
# Uncomment one of the following strings 
# here we consider the cone with 2 pentagons at the tip 
fileout="p2_1000_check.gro"
#fileout="p3_1000.gro"
#fileout="p4_1000.gro"
echo "checking $file... writing to $fileout"
##########   write header   #############
#we remove tabs and multiple spaces from the file and we insert a header (to be read in python)   
sed '/^#\|^@/d' $file >>temp.dat
sed -i 's/\  */ /g' temp.dat
sed -i 's/^ //' temp.dat
sed -i 1d temp.dat

#add a header for python
header="ATOM XCOORD YCOORD ZCOORD"
echo $header > cone_to_gro.dat
cat temp.dat >> cone_to_gro.dat

#we now call the python script
python make_it_a_gro.py
#remove temporary files
rm temp*

#rename the file 
mv my_cone.gro $fileout 




