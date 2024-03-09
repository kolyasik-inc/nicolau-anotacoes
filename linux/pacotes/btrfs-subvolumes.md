---

# Subvolumes
  Este script Bash é utilizado para criar subvolumes Btrfs em um sistema de arquivos. 
Cada subvolume representa uma parte específica da árvore do sistema de arquivos, e isso é 
muitas vezes utilizado em configurações de instalação ou snapshot em sistemas que usam 
Btrfs como sistema de arquivos principal.  

```bash

#!/bin/bash

btrfs subvolume create /mnt/@
btrfs subvolume create /mnt/@home
btrfs subvolume create /mnt/@root
btrfs subvolume create /mnt/@opt
btrfs subvolume create /mnt/@srv
btrfs subvolume create /mnt/@var
btrfs subvolume create /mnt/@tmp
btrfs subvolume create /mnt/@swap
btrfs subvolume create /mnt/@log
btrfs subvolume create /mnt/@usr@local
btrfs subvolume create /mnt/@snapshots
btrfs subvolume create /mnt/@gdm3
btrfs subvolume create /mnt/@containers
btrfs subvolume create /mnt/@AccountsServices
btrfs subvolume create /mnt/@images

```

## subvolumes

### @ (Raiz):
   Este subvolume representa a raiz do sistema de arquivos Btrfs. Corresponde à raiz do sistema de arquivos principal.

### @home:
   Representa o diretório /home, onde os diretórios pessoais dos usuários são normalmente armazenados.

### @root:
   Representa o diretório /root, que é o diretório pessoal do usuário root.

### @opt:
   Corresponde ao diretório /opt, geralmente utilizado para a instalação de pacotes de software opcionais.

### @srv:
   Representa o diretório /srv, utilizado para dados de serviços do sistema.

### @var:
   Corresponde ao diretório /var, que contém dados variáveis, como logs, spool de impressora, e-mail, entre outros.

### @tmp:
   Representa o diretório /tmp, utilizado para armazenar arquivos temporários.

### @swap:
   Representa um subvolume destinado a ser utilizado como swap, uma área de armazenamento temporário utilizada pelo sistema operacional.

### @log:
   Representa o diretório /var/log, onde os logs do sistema são armazenados.

### @usr@local:
   Corresponde ao diretório /usr/local, utilizado para a instalação de software local.

### @snapshots:
   Representa um subvolume dedicado para armazenar snapshots do sistema de arquivos Btrfs. Snapshots são instantâneos do sistema de arquivos em um determinado momento.

### @gdm3:
   Corresponde ao diretório /var/lib/gdm3, que é utilizado pelo GNOME Display Manager (GDM).

### @containers:
   Representa o diretório /var/lib/containers, utilizado para armazenar dados relacionados a contêineres.

### @AccountsServices:
   Representa o diretório /var/lib/AccountsServices, utilizado para armazenar dados relacionados aos serviços de contas.

### @images:
   Representa o diretório /var/lib/libvirt/images, utilizado para armazenar imagens de máquinas virtuais quando se utiliza o hypervisor KVM/libvirt.

---
# Montagem de Subvolumes

Esse script Bash é projetado para configurar e montar um sistema de arquivos Btrfs em um dispositivo de armazenamento específico. Ele interage com o usuário para obter informações sobre o dispositivo, diretório de montagem e o tipo de dispositivo de armazenamento (HDD ou SSD). Em seguida, com base no tipo de dispositivo, ele define opções de montagem específicas para otimizar o desempenho. Finalmente, ele cria e monta vários subvolumes Btrfs em diretórios específicos dentro do ponto de montagem fornecido.

```bash

#!/bin/bash

read -p "Enter the storage device where the Btrfs file system is located (/dev/sdX): " mountDevice
read -p "Enter the path to the mount directory (e.g., '/target' or '/mnt'): " mountDirectory
read -p "Is the storage device an HDD or SSD? (Type 'hdd' or 'ssd'): " storageType

if [ "$storageType" = "ssd" ]; then
    mountOptions="noatime,compress=zstd:3,space_cache=v2,ssd,discard=async"
elif [ "$storageType" = "hdd" ]; then
    mountOptions="relatime,compress=zstd:3,space_cache=v2,nossd,autodefrag"
else
    echo "Unrecognized storage type."
    exit 1
fi

mount -o	$mountOptions,subvol=@			$mountDevice	$mountDirectory
mount -o	$mountOptions,subvol=@home		$mountDevice	$mountDirectory/home
mount -o	$mountOptions,subvol=@root		$mountDevice	$mountDirectory/root
mount -o	$mountOptions,subvol=@opt		$mountDevice	$mountDirectory/opt
mount -o	$mountOptions,subvol=@srv		$mountDevice	$mountDirectory/srv
mount -o	$mountOptions,subvol=@var		$mountDevice	$mountDirectory/var
mount -o	$mountOptions,subvol=@tmp		$mountDevice	$mountDirectory/tmp
mount -o	$mountOptions,subvol=@swap		$mountDevice	$mountDirectory/swap
mount -o	$mountOptions,subvol=@log		$mountDevice	$mountDirectory/var/log
mount -o	$mountOptions,subvol=@usr@local		$mountDevice	$mountDirectory/usr/local
mount -o	$mountOptions,subvol=@snapshots		$mountDevice	$mountDirectory/.snapshots
mount -o	$mountOptions,subvol=@gdm3		$mountDevice	$mountDirectory/var/lib/gdm3
mount -o	$mountOptions,subvol=@containers	$mountDevice	$mountDirectory/var/lib/containers
mount -o	$mountOptions,subvol=@AccountsServices	$mountDevice	$mountDirectory/var/lib/AccountsServices
mount -o	$mountOptions,subvol=@images	 	$mountDevice	$mountDirectory/var/lib/libvirt/images

```
Aqui está uma explicação do funcionamento do código:

Leitura de Entradas do Usuário:
    O script usa o comando read para obter três entradas do usuário:
        mountDevice: O dispositivo de armazenamento onde o sistema de arquivos Btrfs será configurado (por exemplo, /dev/sdX).
        mountDirectory: O diretório onde o sistema de arquivos Btrfs será montado (por exemplo, /target ou /mnt).
        storageType: O tipo de dispositivo de armazenamento, que pode ser 'hdd' ou 'ssd'.

Determinação das Opções de Montagem:
    Com base no tipo de dispositivo de armazenamento (storageType), o script determina as opções de montagem adequadas.
    Se for um SSD, as opções incluem noatime, compressão zstd:3, space_cache=v2, ssd e discard=async.
    Se for um HDD, as opções incluem relatime, compressão zstd:3, space_cache=v2, nossd e autodefrag.

Montagem dos Subvolumes:
    O script utiliza o comando mount para montar vários subvolumes Btrfs no dispositivo e no diretório de montagem especificados.
    Cada subvolume é montado com as opções de montagem apropriadas e em um diretório específico, representando diferentes partes do sistema de arquivos.
    Os subvolumes incluem raiz (@), /home, /root, /opt, /srv, /var, /tmp, /swap, /var/log, /usr/local, .snapshots, /var/lib/gdm3, /var/lib/containers, /var/lib/AccountsServices, e /var/lib/libvirt/images.

Este script é projetado para configurar um ambiente Btrfs com várias subvolumes, permitindo uma organização clara e flexível do sistema de arquivos. Certifique-se de ter cuidado ao executar scripts que envolvem particionamento e formatação de dispositivos de armazenamento, pois eles podem resultar na perda de dados se não forem usados com cuidado.

---
