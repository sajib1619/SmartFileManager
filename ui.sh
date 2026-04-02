main_menu() {
zenity --list \
--title="Smart File Manager" \
--window-icon=folder \
--width=500 --height=500 \
--column="Options" \
"Browse Files" \
"Search File" \
"Copy File" \
"Move File" \
"Delete File" \
"Rename File" \
"Create Folder" \
"Backup Folder" \
"Change Permission" \
"Initialize Git Repo" \
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
echo "10"; sleep 0.3
echo "50"; sleep 0.3
echo "100"
) | zenity --progress --title="Processing..." --auto-close
}
