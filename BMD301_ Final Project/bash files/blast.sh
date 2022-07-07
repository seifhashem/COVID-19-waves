echo "enter you database file: "
read a 
makeblastdb -in $a -dbtype nucl 

for i in *.fasta;do
blastn -query $i -db $a -word_size 11 -dust no -out $i.results.txt
done


