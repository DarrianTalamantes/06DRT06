Vsnp programs Read Me

Run these commands in vsnp envirnment in conda

$ git clone https://github.com/USDA-VS/vSNP.git

$ cd vSNP
$ conda env create
$ conda activate vsnp
$ ln -s {FULL PATH TO}/vSNP/vSNP.py ~/anaconda*/bin/


The first program you will need to run this pipline is "getting_TB_data.sh" which will grab the Bovine data from NCBI. It will be named odd though. You will need to make a directory for your data and place a copy of the program in there. It will then populate the directory with the data. Then it will ask if you wanna delete it at the end. If its just a copy type "yes"

Next run the program "Renamer.sh". You can run this program from anywhere. It will first gzip all files in the directory the data is in. It will then rename the files into soemthing readable by vSNP and then copy them into a backup folder. 

Next you must run "~/vSNP/vSNP.py" in the directory full of with all the properly named gzip files 

Once all files are created run the program called "relocator.sh" this program copies vcf files into a directory (Vsnp_VCF) that we will use the next command on.

python3 /home/darrian/vSNP/vSNP.py -a run this command in the directory full of *zc.vcf files

