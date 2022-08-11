#!bash/bin

var=$1


no_records="$(wc -l < $var)" #it will store total no of records in the file
#echo $no_records
modulo=$(($no_records%2))
#echo $modulo
if (( $modulo==1 ))
then 
	no_records=$(( $no_records+1 ))	
fi
	
#no_records=$([ $modulo==1 ] && echo $no_records+1 || echo $no_records)

#$( $no_records%2 ? (no_records=$(($no_records+1)) : (no_records) )

middle_no=$(($no_records/2)) #it will store the index of the middle row 
#echo $middle_no

# in awk -v is used for variable 
# FNR refers to record no in current file
awk -v size="$middle_no" '{     

if ((FNR == size))
{
print $0
}
}' $var
 

