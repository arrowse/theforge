echo -e "\e[1;45m Welcome to the Forge image compression tool.\e[0m"
installed=true
ffmpeg -version > /dev/null || installed=false

# These helper functions do the actual heavy lifting- The rest of this file asks for a directory, checks if the folders
# /images and /imagesUncompressed exist, and helps walk you through setting them up if they don't.

function moveImages {
   for unmovedFile in "$pathFormated/images"/*; do
     if ! [[ $unmovedFile == *.webp ]]; then
       mv -n -- "$unmovedFile" "$pathFormated/imagesUncompressed" && echo "$unmovedFile successfully moved!" || echo "$unmovedFile failed to move!"
     fi
     done
}
function compressImages {
echo -e "\e[1;42m Converting and compressing files... \e[0m"
    for file in "$pathFormated/imagesUncompressed"/*; do
      if ! test -f "$pathFormated/images/$(basename -- "${file%%.*}")".webp; then
        echo "Processing $(basename -- "${file##*/}") "
        ffmpeg -loglevel quiet -i "$file" -quality 50 "$pathFormated/images/$(basename -- "${file%%.*}")".webp
        fi
      done
}

if [[ "$installed" == false ]]; then
  echo "Please install FFmpeg (https://www.ffmpeg.org/download.html) before running this script."
  exit 1
fi
read -r -p "Please enter the directory path where your images folder is located. (eg, ./src, use . for current directory)  " imagesPath
cd "$imagesPath" || exit 1
pathFormated=$(pwd) 
echo -e "\e[1;46m Checking files in $pathFormated \e[0m"
if ! test -d "$pathFormated/images"; then
  echo -e "\e[1;43m Couldn't find a /images directory at that location \e[0m"
  exit 1
  fi
if test -d "$pathFormated/imagesUncompressed"; then
   moveImages
   compressImages
  else
  read -r -p "Running this script will compress images in your images folder, is it OK to move uncompressed images to a new directory? ($imagesPath/uncompressedImages) [y/N]  " uncompressedPathOK
  if [[ "$uncompressedPathOK" =~ [yY](es)* ]]; then
      mkdir "$pathFormated/imagesUncompressed"
      echo -e "\e[1;41m Directory created! \e[0m"
    moveImages
    compressImages
  fi
  fi
  echo -e "\e[1;41m Finished compressing! You're all set. \e[0m"
