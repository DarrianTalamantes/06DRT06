#bin/bash

#taking all vSNP .vcf files out of subdirectories and putting them somewhere in common
>list_o_vSNP_vcf.txt
find /home/darrian/Desktop/Salvador_lab/Bovine_TB_pipline_tests/TB_data -name *zc.vcf >> list_o_vSNP_vcf.txt

for line in $(cat list_o_vSNP_vcf.txt)
do
echo movng a file
cp $line /home/darrian/Desktop/Salvador_lab/Bovine_TB_pipline_tests/Vsnp_VCF

done





