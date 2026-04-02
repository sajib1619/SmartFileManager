#!/bin/bash

source file_ops.sh
source git_ops.sh
source backup.sh
source search.sh
source permissions.sh
source ui.sh

while true
do
choice=$(main_menu)

case $choice in

"Browse Files") browse_files ;;
"Search File") search_file ;;
"Copy File") copy_file ;;
"Move File") move_file ;;
"Delete File") delete_file ;;
"Rename File") rename_file ;;
"Create Folder") create_folder ;;
"Backup Folder") backup_folder ;;
"Change Permission") change_permission ;;

"Initialize Git Repo") git_init ;;
"Git Status") git_status ;;
"Commit Changes") git_commit ;;
"View History") git_history ;;
"Restore Version") git_restore ;;
"Push to GitHub") git_push ;;
"Pull from GitHub") git_pull ;;

"Exit") exit ;;
esac

done
