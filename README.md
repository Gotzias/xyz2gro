# xyz2gro
script to convert files of xyz type to gro format (compatible with gromacs)

To construct the carbon nanocone models, we remove 1--5  sectors of 60o from a flat graphene disk and connect the dangling bonds. For each removed sector, we introduce one pentagon at the conic tip. The number of pentagons, np, at the apex, specifies the angle of the cone, theta, according to: sin(theta/2)=1-np/6. For np=[1,2,3,4,5], we generate cones with apex angles of 113o, 84o, 60o, 39o and 19o, respectively. Here, we only consider the cases with np=2, 3 and 4. The pentagons are topologically isolated, meaning that each pentagonal face  is surrounded by five hexagons. We list the atomic coordinates of the nanocone structures. W also list a script to convert the files with the atomic coordinates to a format compatible with GROMACS.
put everything in a folder open a terminal go to that folder and type:  ./xyz2gro.sh 
