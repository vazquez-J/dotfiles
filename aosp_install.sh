#Install java
sudo apt install openjdk-8-jdk

#Install libraries
sudo apt install -y git-core gnupg flex bison gperf build-essential \
zip curl zlib1g-dev gcc-multilib g++-multilib libc6-dev-i386 \
lib32ncurses5-dev x11proto-core-dev libx11-dev lib32z-dev ccache \
libgl1-mesa-dev libxml2-utils xsltproc unzip

# Get repo tool 
sudo curl -o /usr/local/bin/repo https://storage.googleapis.com/git-repo-downloads/repo && sudo chmod a+x /usr/local/bin/repo

# Make dir for aosp
mkdir -p ~/Dev/AOSP && cd ~/Dev/AOSP

# initialize repo for Nexus5x Android N build
repo init -u https://android.googlesource.com/platform/manifest -b android-7.0.0_r4

