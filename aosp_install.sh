#Install java
sudo apt install -y openjdk-8-jdk

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


# Installing Android Studio
wget https://dl.google.com/dl/android/studio/ide-zips/2.2.0.12/android-studio-ide-145.3276617-linux.zip
unzip android to /opt/android-studio
add /opt/android-studio/bin to path
# install 32bit libraries
sudo apt-get install lib32z1 lib32ncurses5 lib32bz2-1.0 lib32stdc++6

add env variable $ANDROID_NDK_HOME or add ndk.dir to local.properties

export ANDROID_NDK_HOME=/home/$USER/.local/share/...

