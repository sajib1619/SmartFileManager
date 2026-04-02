git_init() {
folder=$(zenity --file-selection --directory)
cd "$folder"
git init
zenity --info --text="Repo initialized"
}

git_status() {
folder=$(zenity --file-selection --directory)
cd "$folder"

git status > /tmp/git.txt
zenity --text-info --filename=/tmp/git.txt
}

git_commit() {
folder=$(zenity --file-selection --directory)
msg=$(zenity --entry --text="Commit message")

cd "$folder"
git add .
git commit -m "$msg" > /tmp/commit.txt 2>&1

zenity --text-info --filename=/tmp/commit.txt
}

git_history() {
folder=$(zenity --file-selection --directory)
cd "$folder"

git log --oneline > /tmp/history.txt
zenity --text-info --filename=/tmp/history.txt
}

git_restore() {
folder=$(zenity --file-selection --directory)
id=$(zenity --entry --text="Commit ID")

cd "$folder"
git checkout "$id"

zenity --info --text="Restored"
}

git_push() {
folder=$(zenity --file-selection --directory)
url=$(zenity --entry --text="Repo URL")

cd "$folder"
git remote add origin "$url" 2>/dev/null
git push -u origin main

zenity --info --text="Pushed!"
}

git_pull() {
folder=$(zenity --file-selection --directory)
cd "$folder"

git pull origin main
zenity --info --text="Updated!"
}
