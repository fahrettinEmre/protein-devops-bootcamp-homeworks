#!/bin/bash
#########################################################################
##    Author : Fahrettin Emre Dalga                                    ## 
##    Date : 27.05.2022                                                ##
##    Version:GNU bash, version 4.3.48(1)-release (x86_64-pc-linux-gnu)##
##    Usage : for build                                                ##
#########################################################################

#load config file
source /home/vagrant/2-hafta-odev-1-git-fahrettinEmre/HomeworkBuild/buildfunctions.conf

#branch ismini alıp başka functionlarda kullanmak için global bir değişken tanımladık.
GLOBAL_BRACH="" 

#Branch kontrolü yapmak için bulunduğu branchi bir değişkene atıyoruz.
branch="$(git rev-parse --abbrev-ref HEAD)"

#Kullanıcıdan branch istiyoruz.
echo "Build almak istediğiniz branch:"
read BRANCH_NAME  
GLOBAL_BRACH=$BRANCH_NAME  

#Branch kontrolü yapıyoruz.
if [ "$branch" = "$BRANCH_NAME" ]; then        #Bulunduğumuz branch ile kullanıcının girdiği branch aynı ise;         
check_main_branch $branch                               
  start_build                                           
else 
   check_main_branch $BRANCH_NAME              
   if [ `git branch --list $BRANCH_NAME` ]     # Kullanıcının girdiği branch lisetede var ise ;
    then
   git checkout $BRANCH_NAME
   start_build
    else                                       # Kullanıcı yeni branch ismi girdi ise;
   git checkout -b $BRANCH_NAME                 
   write_info "geçtiğimiz branch:${BRANCH_NAME}"
   start_build
   fi
fi