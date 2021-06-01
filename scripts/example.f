c This program calculates the final grade for each student
c attending 206 class
C Set parameters and dimension
parameter (num=6)
dimension test(num),fin(num),
* tot(num),home(num),wet(3)
C introduce data
data wet/0.3,0.4,0.3/
C open files for in and out puts

open(2,file='test206.data',status='old')
open(3,file='fin206.data',status='old')
open(4,file='home206.data',status='old')
open(7,file='out206.data',status='unknown')
do 100 i=1,num
C read in data

read(2,*)test(i)
read(3,*)fin(i)
read(4,*)home(i)
C do the computation
if(i.ne.3) then
tot(i)=wet(1)*test(i)+wet(2)*fin(i)+wet(3)*home(i)
else
tot(i)=0.
end if
100 continue
C write out outputs
write(7,*) tot
stop
end
