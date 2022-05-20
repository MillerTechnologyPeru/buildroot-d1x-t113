#!/bin/bash


LOCAL_COMMIT_ID=$(git rev-parse --short HEAD)                

echo -e "Git Commit:      $LOCAL_COMMIT_ID\n"
                                                              


# configure C compiler
export compiler=$(which gcc)
 
# get version code
MAJOR=$(echo __GNUC__ | $compiler -E -xc - | tail -n 1)
MINOR=$(echo __GNUC_MINOR__ | $compiler -E -xc - | tail -n 1)
PATCHLEVEL=$(echo __GNUC_PATCHLEVEL__ | $compiler -E -xc - | tail -n 1)

if [ $MAJOR -lt 7 ];
then 
    echo "#### Buildroot-MangoPiSBC Not Support GCC Version less than 7 ####"
elif [ $MAJOR -gt 12 ];
then
    echo "#### Buildroot-MangoPiSBC Not Support GCC Version more than 12 ####"
else
    echo "Your Host GCC Version is $MAJOR.$MINOR.$PATCHLEVEL"
fi

# Add alias 

# Alias
# make
alias lunch="cd buildroot && echo -e \"You're building on Linux\n\nLunch menu... \npick a combo by 'make xxx_defconfig':\nScaning combo...\" && make list-defconfigs"
alias mkernel="touch ./output/images/a.dtb && rm ./output/images/*.dtb && make linux-rebuild -j8 && make"
alias muboot="make uboot-rebuild -j8 && make"
alias m="make"
alias sync_kernel="rm -rf output/build/linux* && rm -rf output/build/.linux* && make"
alias sync_uboot="rm -rf output/build/uboot* && make"

# config
alias sm="make savedefconfig"
alias skernel="make linux-update-defconfig"
alias suboot="make uboot-update-defconfig"


LOCAL_COMMIT_ID=$(git rev-parse --short HEAD)

echo -e "\n"
echo "******************************************"
echo "* Setup env done! Please run lunch next. *"
echo "******************************************"
