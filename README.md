
<div align = center>

# Buildroot MangoPi-MQ
*Buildroot Package for MangoPi-MQ Devices. Support Allwinner D1-H D1s T113*


---

<br>

 Vendor  | Device      | Chip    | U-Boot  | Linux   | Defconfig |
:------: | :---------: | :-----: | :-----: | :-----: | :-------: |
*YuzukiHD* | *YuzukiRuler* | `F1C200s` | `2020.07` | `5.4.180` | `yuzukihd_yuzukiruler_defconfig`
*YuzukiHD* | *YuzukiCore F1* | `F1C200s` | `2020.07` | `5.4.180` | `yuzukihd_yuzukicore_f1_defconfig` |
*YuzukiHD* | *YuzukiCK1N* | `V3x` | `2022.01` | `5.4.180` | `yuzukihd_yuzukick1n_defconfig` |
*YuzukiHD* | *R11 86 Panel* | `R11` | `2022.01` | `5.4.180` | `yuzukihd_r11_86panel_defconfig` |
*Awol*     | *Nezha* | `D1-H` | `Tina` `UBoot 2018` | `Tina` `Linux 5.4.61` | `awol_nezha_defconfig` |
*Awol*     | *Nezha-D1s* | `D1s` | `Tina` `UBoot 2018` | `Tina` `Linux 5.4.61` | `awol_nezha_d1s_defconfig` |
*MangoPi*  | *MQ* | `D1s` | `Tina` `UBoot 2018` | `Tina` `Linux 5.4.61` | `mangopi_mq_defconfig` |
*MangoPi*  | *MQ Dual* | `T113` | `longan` `UBoot 2018` | `longan` `Linux 5.4.61` | `mangopi_mq_dual_defconfig` |
*MangoPi*  | *MQ Pro* | `D1-H` | `Tina` `UBoot 2018` | `Tina` `Linux 5.4.61` | `mangopi_mq_pro_defconfig` |

<br>

---

<br>


## Fork Tree

<kbd align = left>
<br>
<br>
  
   **[Tiny200]**   <br><br>
   ⤷ **[MangoPi-R]**   <br><br>
    ⤷ **YuzukiSBC**   
    ⤷ **MangoPiSBC**   
<br>
</kbd>

<br>

---

<br>

## About Buildroot

</div>


```
Buildroot is a simple, efficient and easy-to-use tool to generate embedded
Linux systems through cross-compilation.

The Online documentation can be found at http://buildroot.org/docs.html
```
## Build dependencies:
```
1) sudo apt-get update
2) sudo apt-get install rsync wget unzip build-essential git bc swig libncurses-dev libpython3-dev libssl-dev python3-distutils android-tools-mkbootimg mtools
 -y
```
## Build source, do the following:
```
1) source envsetup.sh
2) lunch
3) make mangopi_xxx_defconfig
4) make
5) wait while it compiles
6) find the kernel, bootloader, root filesystem, etc. in output/images
```
## Tips
```
1) You do not need to be root to build or run buildroot.  Have fun!
2) "mkernel" for build or rebuild linux kernel and dts
3) "muboot" for build or rebuild uboot
4) "m" for make
5) "sync_kernel","sync_uboot" for resync the source code
6) "sconfig" for save buildroot config
7) "skernel" for save linux config
8) "suboot" for save uboot config
```



<!----------------------------------------------------------------------------->


[License]: LICENSE


[MangoPi-R]: https://github.com/mangopi-sbc/buildroot-mangopi-r
[Tiny200]: https://github.com/aodzip/buildroot-tiny200
