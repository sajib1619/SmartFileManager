search_file() {
folder=$(zenity --file-selection --directory)
name=$(zenity --entry --text="File name")

find "$folder" -name "*$name*" > /tmp/search.txt

zenity --text-info --filename=/tmp/search.txt
}
