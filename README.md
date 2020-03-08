# rk3399-roc-pc Usage

Rockchip rk3399 target board works ok, but You need :

* a rk3399-roc-pc physical board for download
* Ubuntu 18.04 Linux System
* 100ask's Uboot and buildroot <http://wiki.100ask.org/100ask_roc-rk3399-pc>
* Linux-lab <https://gitee.com/robin329/linux-lab>


## How to compile 

```
$ make BOARD=aarch64/rk3399-roc-pc
$ make kernel-source
$ make kernel-checkout
$ make kernel
$ # exit linux-lab to Ubuntu.
$ # Copy compile results to ~/tftp dir
$ ./labs/linux-lab/boards/aarch64/rk3399-roc-pc/bsp/boot.sh
```

## How use root filesystem to boot board?
```
# uboot boot param
=> setenv serverip 192.168.0.102
=> setenv ipaddr 192.168.0.112
=> tftpboot 0x01f00000 rk3399-roc-pc.dtb; tftpboot 0x02080000 Image; setenv bootargs root=/dev/nfs \
nfsroot=192.168.0.102:/home/book/nfs_rootfs/rootfs,vers=3 rw ip=192.168.0.112 initcall_debug=1; booti 0x02080000 - 0x01f00000
```
## mount nfs filesystem
```
mount  -t  nfs  -o  nolock,vers=2  192.168.0.101:/home/book   /mnt
```

## References

* [Linux-lab gitee][1]


[1]: https://gitee.com/tinylab/linux-lab
[2]: https://gitee.com/robin329/linux-lab