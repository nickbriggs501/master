#!/bin/sh
clear
echo " "
echo -e $(tput setaf 4)"file converter"
echo " "
echo -e $(tput setaf 2)"what do you want to do?"
echo " "
echo -e $(tput setaf 1)" 1)$(tput setaf 2) add shebang to first line of a file"
echo -e $(tput setaf 1)" 2)$(tput setaf 2) make a text character image printable"
echo -e $(tput setaf 1)" 3)$(tput setaf 2) zip all directories then convert to watch file"
echo -e $(tput setaf 1)" 4)$(tput setaf 2) remove .prefix from all file names in directory"
echo -e $(tput setaf 1)" 5)$(tput setaf 2) exit"
echo -e $(tput setaf 1)' '
read -p "select option: " user_intent
if [ $user_intent == 1 ]
then
  clear
  echo " "
  echo "these are the files in your current directory:"
  echo -e $(tput setaf 1)' '
  ls
  echo ' '
  echo -e $(tput setaf 2)"enter the file name you want to modify"
  echo -e $(tput setaf 1)" "
  read -p "file: " user_file
  echo -e $(tput setaf 1)"$user_file $(tput setaf 2)is being converted..."
  sed -i -e '1i#!/bin/sh\' $user_file
  sleep 1
fi
if [ $user_intent == 2 ]
then
  clear
  echo " "
  echo -e $(tput setaf 2)"these are the files in your current directory:"
  echo -e $(tput setaf 1)' '
  ls
  echo ' '
  echo -e $(tput setaf 2)"enter the file name you want to convert"
  echo -e $(tput setaf 1)" "
  read -p "file:  " user_file
  echo -e $(tput setaf 2)"$user_file $(tput setaf 2)is being converted"
  sed -i -e 's/^/echo -e $(tput setaf 2)"/; s/$/"/' $user_file
  sed -i -e '1i#!/bin/sh\' $user_file
  sleep 1
fi
if [ $user_intent == 3 ]
then
  clear
  echo " "
  echo -e $(tput setaf 2)"converting files"
  for i in */; do zip -r "${i%/}.zip" "$i";done
  sleep 2
  for f in *.zip; do
      mv -- "$f" "${f%.zip}.watch"
  done
  sleep 2
fi
if [ $user_intent == 4 ]
then
  clear
  echo " "
  echo -e $(tput setaf 2)"removing .prefix from the files in your current directory:"
  sleep 3
  for file in .*; do mv "$file" "${file#.}";done;
  echo "done"
  sleep 3
fi
echo -e $(tput setaf 2)"task completed"
sleep 2
