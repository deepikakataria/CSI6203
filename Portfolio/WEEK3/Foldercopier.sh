#!/bin/bash
folderName=""
IsFolderNameValid() {
    if [ -d "$folderName"]; then
    read -p "type the name of the destination folder" newFolderName
    cp -r "$folderName" "$newFolderName"
    else
    echo "[folder is invalid] Unable to copy and move folder:" "$folderName"
    exit 1
    fi
}
CopyNewFolderName() {
    read -p "Type the name of the folder you would like to copy:" folderName
}

IsFolderNameValid
CopyNewFolderName
tree

echo 'Done'
exit 0