backup_folder() {
folder=$(zenity --file-selection --directory)

[ -z "$folder" ] && return

name=$(basename "$folder")
timestamp=$(date +"%Y-%m-%d_%H-%M")

backup_dir="$HOME/SmartFileManager_Backups"
mkdir -p "$backup_dir"

backup_file="$backup_dir/${name}_$timestamp.tar.gz"

tar -czf "$backup_file" "$folder"

zenity --info --text="Backup saved at:\n$backup_file"

progress_bar
}
