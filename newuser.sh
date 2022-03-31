#$1 is username
#$2 is password

#make new directory in apache server the same as username
mkdir /srv/http/user/$1

#create user with chosen username and password
useradd -m $1 -p $2

#add user to remoteuser group
usermod -G remoteuser -a $1

#create symbolic link to server directory under www
ln -s /srv/http/user/$1 /home/$1/www
