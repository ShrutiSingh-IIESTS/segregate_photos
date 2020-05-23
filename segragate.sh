target="../segregate_photos"
for imagefile in "$target"/*.jpg
do
    imagename=$(echo ${imagefile##*/})

    # extract year and month using cut (on the basis of delimiter, i.e, "-" )and specifying fieldname using -f
    year=$(echo $imagename | cut -d '-' -f 1)
    month=$(echo $imagename | cut -d '-' -f 2)
    if [ ! -d "$year/$month" ]
    then
    	mkdir -p "$year/$month"
    fi
    mv $imagefile $year/$month/$imagename

done