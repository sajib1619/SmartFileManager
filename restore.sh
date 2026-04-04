restore_backup() {
file=$(zenity --file-selection --title="Select Backup File (.tar.gz)")

[ -z "$file" ] && return

dest=$(zenity --file-selection --directory --title="Select Restore Location")

[ -z "$dest" ] && return

tar -xzf "$file" -C "$dest"

zenity --info --text="Backup restored successfully!"

progress_bar
}
