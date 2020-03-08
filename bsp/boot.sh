#!/bin/bash -
#===============================================================================
#
#          FILE: boot.sh
#
#         USAGE: ./boot.sh
#
#   DESCRIPTION: copy Image && dtb to ~/tftpboot dir.
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Robin.J
#  ORGANIZATION: 
#       CREATED: 2020年02月07日 06时51分09秒
#      REVISION:  V01
#===============================================================================

set -o nounset                                  # Treat unset variables as an error
PWD=`pwd`

# copy Image and dtb to ~/tftpboot dir.
echo
echo -e "\033[31m Start Copy Image & dtb to ~/tftpboot ...\033[0m"
echo
sudo cp $PWD/labs/linux-lab/output/aarch64/linux-v5.5-rk3399-roc-pc/arch/arm64/boot/Image ~/tftpboot
echo -e " Copy Image Success ..."
sleep 1
echo
sudo cp $PWD/labs/linux-lab/output/aarch64/linux-v5.5-rk3399-roc-pc/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtb ~/tftpboot
echo -e " Copy dtb Success ..."
echo
echo -e "\033[31m Copy finished !!!\033[0m"

