
TIMEZONE="US/Pacific-New"

# systemd is taking over the world step by step, inch by inch...
sudo timedatectl set-timezone ${TIMEZONE}

# add the weewx apt-get repo
curl -s http://weewx.com/keys.html | sudo apt-key add -
curl -s http://weewx.com/apt/weewx.list | sudo tee /etc/apt/sources.list.d/weewx.list

# catch up to what's in the various repos
sudo apt-get update -y

# get ancillary stuff not in the base box
sudo apt-get install -y lynx nginx ntp

# this can slow you down a lot if your base box is old
# sudo apt-get upgrade -y

# install weewx (this hangs due to waiting for keyboard input)
sudo DEBIAN_FRONTEND=noninteractive apt-get -y install weewx

