# Instalação Arch Linux

## Index

| Numero | Conteudos |
|---|---|
| 1 | [Pre-Configs da ISO](#is-00) |
| 2 | [Particionamento e Subvolumes](#pt-00) |

---

##### is-00
# Pre-Configs da ISO

### **teclado**

_No caso de ser teclado brasileiro_ `loadkeys br-abnt2`

_No caso de teclado americano_ `loadkeys us-acentos`

```bash
localectl list-keymaps | less
loadkeys us
```

### **relogio**

```bash
# sincronizar relogio
timedatectl set-ntp true
# acertar manualmente o relogio
date -s '2014-12-25 12:34:56'
```

---

##### pt-00
# Particionamento e Subvolumes

## **Setups dos Discos**

### **limpeza de disco**

Apriori pode se substituir os dados ocultos do HDD por zeros

```bash
shred -vzf -n=2 /dev/sdX
```

ou simplesmente deletar  os discos 

```bash
# Limpeza do disco substitua /sdX ou /mapper/VolumeLogico
sudo wipefs --all --force /dev/sdX
```

### **particionamento Principiante**

```bash
cfdisk /dev/sda
# select disk label "dos"
# create partition "sdX1"  size "8gb" type " linux swap / solaris"
# create partition "sdX2" size remaining space with type "linux"
# and "write"
```

### **Particionamento Intermediario**
```bash
gdisk /dev/sda
 
# command: n 
# First sector: default 
# Last sector: +350M 
# L to show codes and search EFI 
# GUID: ef00 
 
# command: n 
# First sector: default 
# Last sector: default 
# L to show codes and search Linux filesystem 
# GUID: 8300 
 
# command: w
# proceed? y 
```

### **Particionamento Avançado**

```bash
parted -a optimal /dev/sdX

# mklabel gpt
# unit mib 
# mkpart primary 1 513 
# name 1 bios_grub 
# set 1 bios_grub on 
# mkpart primary 513 1537 
# name 2 boot 
# set 2 BOOT on 
# mkpart primary 1537 -1 
# name 3 gentoolvm 
# set 3 lvm on 
# p 
```

## **Formatando sistemas de arquivos**

```bash
mkfs.vfat /dev/sdX1
mkfs.ext4 -T small -L "boot" /dev/sdX2
cryptsetup -v -y -c aes-xts-plain64 -s 512 -h sha512 -i 5000 --use-random luksFormat /dev/sdX3
cryptsetup luksDump /dev/sdX3
cryptsetup luksOpen /dev/sdX3 GentooPC
pvcreate /dev/mapper/GentooPC
pvdisplay
vgcreate gentoo /dev/mapper/GentooPC
vgdisplay
lvcreate -C y -L 8G gentoo -n swap
lvcreate -l +100%FREE gentoo -n root
lvdisplay
```

~Fim.~

---
