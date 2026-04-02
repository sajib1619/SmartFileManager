backup_folder() {
folder=$(zenity --file-selection --directory)

tar -czf "$folder-backup.tar.gz" "$folder"

progress_bar
}
