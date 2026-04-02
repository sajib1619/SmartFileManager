change_permission() {
file=$(zenity --file-selection)
perm=$(zenity --entry --text="Enter permission (e.g. 755)")

chmod "$perm" "$file"

zenity --info --text="Permission changed!"
}
