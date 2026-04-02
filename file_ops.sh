browse_files() {
folder=$(zenity --file-selection --directory)
ls -lh "$folder" > /tmp/files.txt
zenity --text-info --filename=/tmp/files.txt
}

copy_file() {
src=$(zenity --file-selection)
dest=$(zenity --file-selection --directory)

cp "$src" "$dest" && progress_bar
}

move_file() {
src=$(zenity --file-selection)
dest=$(zenity --file-selection --directory)

mv "$src" "$dest" && progress_bar
}

delete_file() {
file=$(zenity --file-selection)

if zenity --question --text="Confirm delete?"
then
rm "$file"
fi
}

rename_file() {
file=$(zenity --file-selection)
new=$(zenity --entry --text="New name")

mv "$file" "$(dirname "$file")/$new"
}

create_folder() {
loc=$(zenity --file-selection --directory)
name=$(zenity --entry)

mkdir "$loc/$name"
}
