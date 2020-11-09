#!/bin/sh


R=$( tput setaf 1 )
G=$( tput setaf 2 )

clear
echo $G"press$R n$G for new file"
echo "press$R 1$G to edit one file"
echo "press$R 2$G to edit all .sh files"
echo " "
read -n 1 -p "option: $R" OPT
echo " "
if [ $OPT == n ]
then
  echo $G" "
  read -p "file name: $R" user_file
  echo $G" "
  cp $HOME/scripts/files/shebanged.sh $user_file
  nano -c $user_file
fi
if [ $OPT == 2 ]
then
  sed -i "1i #!/bin/sh" *.sh
fi
if [ $OPT == 1 ]
then
  echo $G" "
  read -p "file name: $R" user_file
  echo $G" "
  sed -i "1i #!/bin/sh" $user_file
fi
