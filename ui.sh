main_menu() {
zenity --list \
--title="Smart File Manager" \
--window-icon=folder \
--width=600 --height=600 \
--column="Options" \
"Browse Files" \
"Search File" \
"Copy File" \
"Move File" \
"Delete File" \
"Rename File" \
"Create Folder" \
"Backup Folder" \
"Restore Backup" \
"Change Permission" \
"Initialize Git Repo" \
"clone repository" \
"Git Status" \
"Commit Changes" \
"View History" \
"Restore Version" \
"Push to GitHub" \
"Pull from GitHub" \
"Exit"
}

progress_bar() {
(
echo "10"; sleep 0.5
echo "50"; sleep 0.5
echo "100"
) | zenity --progress --title="Processing..." --auto-close
}
