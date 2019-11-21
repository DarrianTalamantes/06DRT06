for line in $(cat /home/darrian/Desktop/Salvador_lab/Bovine_TB_pipline_tests/SRR_list.txt)
do
#This will turn the file into a comprossed format readable by vSNP
gzip /home/darrian/Desktop/Salvador_lab/Bovine_TB_pipline_tests/TB_data/"$line"_1.fastq
gzip /home/darrian/Desktop/Salvador_lab/Bovine_TB_pipline_tests/TB_data/"$line"_2.fastq
#This will name the data to something usable by vSNP
mv /home/darrian/Desktop/Salvador_lab/Bovine_TB_pipline_tests/TB_data/"$line"_1.fastq.gz /home/darrian/Desktop/Salvador_lab/Bovine_TB_pipline_tests/TB_data/"$line"_R1.fastq.gz
mv /home/darrian/Desktop/Salvador_lab/Bovine_TB_pipline_tests/TB_data/"$line"_2.fastq.gz /home/darrian/Desktop/Salvador_lab/Bovine_TB_pipline_tests/TB_data/"$line"_R2.fastq.gz
#This will make a backup of the data
cp /home/darrian/Desktop/Salvador_lab/Bovine_TB_pipline_tests/TB_data/"$line"_R1.fastq.gz /home/darrian/Desktop/Salvador_lab/Bovine_TB_pipline_tests/TB_data_backup
cp /home/darrian/Desktop/Salvador_lab/Bovine_TB_pipline_tests/TB_data/"$line"_R2.fastq.gz /home/darrian/Desktop/Salvador_lab/Bovine_TB_pipline_tests/TB_data_backup

done
