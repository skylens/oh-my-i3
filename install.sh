#!/bin/sh
cd `dirname $0`
mkdir ~/bin ~/.fonts ~/.config/i3 > /dev/null 2>&1
cp -uvr font-awesome Monaco.ttf ~/.fonts
cp -iuv config conkyrc_bar ~/.config/i3/
cp -iuv st ~/bin/
NET=`/sbin/ifconfig | awk 'BEGIN{FS=":"}/192/{print a}{a=$1}'`
C=~/.config/i3/config
sed -i "s/wlan0/$NET/g" ~/.config/i3/conkyrc_bar
if [ "`md5sum $C|cut -d ' ' -f1`" = "`md5sum config|cut -d ' ' -f1`" ];then
    sed -i "s/xfce4-terminal/i3-sensible-terminal/g" $C
    sed -i "17,24s/^\([^#]\)/#\1/g" $C
    sed -i "46,50s/^\([^#]\)/#\1/g" $C
    sed -i "59s/^\([^#]\)/#\1/g" $C
    sed -i "62s/^\([^#]\)/#\1/g" $C
    sed -i "23,24d" $C
else
    echo "\n已有的config配置比oh-my-i3新，这将不会被改动！\n如若确定需要安装，请先执行rm $C，然后再继续！"
    exit 1
fi
echo "\n安装成功，请参照说明先配置好$C 以获得更好的体验！"
