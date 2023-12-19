# SDMMR 1024K

Clique [aqui](readme_pt-br.md) para a versão em Português.

## History

**SDMMR 1024K** [1] was developed by **Phillipe H. (MG2)** with colaboration from **Fabf** and **6502man**. It is based on **SDMapper** (version 1) [2] by **Luciano Sturaro** and **Fábio Belavenuto**, without their having participated in its development. The following changes were made:

1. Change CPLD to Altera EPM240;

2. Increased memory from 512K to 1024K;

3. Possibility of using Mapper and MegaRAM together;

4. SDMapper driver 1.0.4 tweak (no version change).
* Links
  
   [1] [SDMMR 1024K](http://mymsx2.free.fr/montages/Cartouche_SD_MMR_1024K/cartouche_sdmmr_1024k.html)
  
   [2] [SDMapper](https://github.com/fbelavenuto/msxsdmapper/)

## Structure of the repository

- Firmware - Update versions
- Nextor - Kernel base
- Tools - Kernel and firmware update utilities

## How-to update the cartridge

$${\color{red}WARNING\\: \space Do\space not\space try\space to\space update\space the\space firmware\space from\space the\space SDMMR\space itself.}$$

The update needs to be done from another medium, such as a floppy disk.

Copy the desired firmware version file (available in the **firmware** directory), the latest firmware that is working in your cartridge (to recovery if needed) and the update utility (_UPDSDMMR.COM_ available in the **tools** directory). If you are using a floppy disk, also copy your own MSX-DOS 1 boot files (_MSX-DOS.SYS_ and _COMMAND.COM_).

Boot MSX disabling the kernel [1] of **SDMMR 1024K**, if your cartridge is in _slot 1_ just keep the "**Q**" key pressed. After booting from the chosen media, run, for example:

`UPDSDMMR SDMMR105.ROM`

After the firmware update, it is advisable to follow the steps below if you already have a 'bootable' SD with a previous version of Nextor:

1. Copy from **tools** the _NEXTOR.SYS_ file available in the respective directory of the firmware version used;

2. If there is, in the same directory, the package _TOOLS.ZIP_ that contains the utilities that were updated or created for the new Nextor kernel. Extract them to SD overwriting your previous files.
* Links
  
   [1] [MSX - Boot keys](https://www.msx.org/wiki/Boot_keys)

## Versions

* 1.0.4
1. Original version with Nextor kernel 2.1.0 alpha 2.
* 1.0.5
1. First Interaction. Base codes (device.bin and custom_code.bin) 'ripped' from driver 1.0.4;
2. Correction of credits, names and driver version;
3. Nextor kernel update to version 2.1.1.
- 1.0.6
1. Nextor kernel update to version 2.1.2.