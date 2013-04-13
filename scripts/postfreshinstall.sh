#install cinnamon, vim, synapse, konsole, build dependencies for touchegg
sudo add-apt-repository -y ppa:gwendal-lebihan-dev/cinnamon-stable
sudo apt-get update
sudo apt-get install -y vim
sudo apt-get install -y cinnamon
sudo apt-get install -y synapse
sudo apt-get install -y konsole
sudo apt-get install -y g++

#these are needed for touchegg
sudo apt-get build-dep touchegg
sudo apt-get install -y subversion
sudo apt-get install -y qt4-qmake

#clone touchegg and install it
cd ~/
svn checkout http://touchegg.googlecode.com/svn/touchegg/
cd touchegg
sudo qmake
sudo make
sudo make install

#setup git and clone down settings
cd ~/
git config --global user.name "Troy Lonie"
git config --global user.email troydl@mail.fresnostate.edu
git clone https://github.com/TroyDL/termprefs.git
git clone https://github.com/TroyDL/ubuntusettings.git
mv termprefs .matilde
cd .matilde
sudo git checkout linux
cp .matilde/.vimrc ~/
cp .matilde/.bashrc ~/
cp .matilde/.bash_profile ~/
cp -r .matilde/.vim ~/

#import konsole settings
cp ~/ubuntusettings/konsole/* ~/.kde/share/apps/konsole/

#run touchmods.sh
cd ~/ubuntusettings/scripts/
./touchmods.sh
cd ~

#import autostart settings
cp ~/ubuntusettings/autostart/* ~/.config/autostart/

#this attempts to fix the blank screen upon boot issue
sudo cp ~/ubuntusettings/blackscreenfix/lightdm.conf /etc/init/

#this attempts to fix the kworker using up 70%+ cpu issue
sudo cp ~/ubuntusettings/kworkerfix/30_disable_gpe13 /etc/pm/sleep.d/30_disable_gpe13
cd ~/ubuntusettings/kworkerfix
sudo crontab cronfix

#fetch and install google chrome
sudo apt-get install -y libgconf2-4
cd /tmp
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -O chrome-stable_current_amd64.deb
sudo dpkg -i chrome-stable_current_amd64.deb

#change chrome's button layout to right hand side
sudo gconftool-2 --set /apps/metacity/general/button_layout --type string ":minimize,maximize,close"

