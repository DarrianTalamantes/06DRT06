#grabs all the bovine data
for line in $(cat /home/darrian/Desktop/Salvador_lab/Bovine_TB_pipline_tests/SRR_list.txt)
do
fastq-dump --split-3 $line
done


echo "Delete program? Yes or No"
read response

if [  $response = Yes ]
then
echo "Sendign myself into the deep the deepest pit of Hell where brimstone will burn me for all eternity"
sleep 2s
echo "Goodbye"
rm getting_TB_data.sh
elif [ $response = No ]
then
echo "I am saved"

else 
echo "... that wasnt a valid response"
fi
