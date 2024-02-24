# Arquivos TAR
O comando tar em sistemas Unix/Linux é uma ferramenta versátil usada para criar e manipular arquivos de arquivamento (tarballs). Ele pode ser combinado com outros comandos ou utilitários para atender a várias necessidades, incluindo criptografia, criação de arquivos particionados e ajuste do nível de compressão. Aqui estão alguns exemplos:

1. Criando um Arquivo Tar:
```bash
# Criar um arquivo tar de um diretório
tar -cvf arquivo.tar diretorio/
```
2. Criando um Arquivo Tar com Compressão:
```bash
# Criar um arquivo tar com compressão gzip
tar -czvf arquivo.tar.gz diretorio/
```
3. Criando um Arquivo Tar com Compressão e Senha (usando openssl):
```bash
# Criar um arquivo tar com compressão gzip e senha
tar -cz diretorio/ | openssl enc -aes-256-cbc -salt -out arquivo.tar.gz.enc
```
4. Extrair um Arquivo Tar com Compressão e Senha (usando openssl):
```bash
# Extrair um arquivo tar com compressão gzip e senha
openssl enc -d -aes-256-cbc -in arquivo.tar.gz.enc | tar -xz
```
5. Criando um Arquivo Tar com Nível de Compressão Específico:
```bash
# Criar um arquivo tar com compressão xz e nível de compressão 9
tar -cJf arquivo.tar.xz --options='compression-level=9' diretorio/
```
6. Criando Arquivos Tar Particionados:
```bash
# Criar arquivos tar particionados com tamanho máximo de 1GB
tar -cMf arquivo_particionado.tar --tape-length=1G diretorio/
```
7. Extrair Arquivos Tar Particionados:
```bash
# Extrair arquivos tar particionados
cat arquivo_particionado.tar.* | tar -xf -
```
Estes são apenas exemplos básicos e você pode ajustar as opções conforme necessário para atender aos requisitos específicos do seu caso de uso. Lembre-se de que a criptografia usando ferramentas como openssl pode ter implicações de segurança, e o manuseio de senhas deve ser feito com cuidado.

---

# Gzip em bash

Certamente! Aqui estão exemplos de vários usos do comando gzip em Bash, incluindo criptografia, compressão de arquivos particionados e ajuste do nível de compressão:

Compressão Padrão com Gzip:
```bash
# Comprime o arquivo "arquivo.txt" e cria "arquivo.txt.gz"
gzip arquivo.txt
```
Descompressão Padrão com Gzip:
```bash
# Descomprime o arquivo "arquivo.txt.gz" e cria "arquivo.txt"
gzip -d arquivo.txt.gz
```
Compressão com Criptografia (usando gpg para criptografar antes de comprimir):
```bash
# Comprime e criptografa o arquivo "arquivo.txt" usando Gzip e GPG
gzip -c arquivo.txt | gpg -c > arquivo.txt.gz.gpg
```
Descompressão com Criptografia:
```bash
# Descriptografa e descomprime o arquivo "arquivo.txt.gz.gpg"
gpg -d arquivo.txt.gz.gpg | gzip -d > arquivo.txt
```
Compressão de Arquivos Particionados (Usando split e cat):
```bash
# Divide o arquivo "arquivo.txt" em partes de 1MB e comprime cada parte
split -b 1M arquivo.txt arquivo_parte_
for parte in arquivo_parte_*; do gzip "$parte"; done
```
Descompressão de Arquivos Particionados:
```bash
# Descomprime cada parte e junta os arquivos particionados
for parte_gz in arquivo_parte_*.gz; do gzip -d "$parte_gz"; done
cat arquivo_parte_* > arquivo_descomprimido.txt
```
Ajuste do Nível de Compressão (de 1 a 9, sendo 9 o máximo):

```bash
# Comprime o arquivo "arquivo.txt" com o nível de compressão 9 (máximo)
gzip -9 arquivo.txt
```

---

# 7zip command line

Teoria:

O 7z é uma ferramenta de linha de comando para compressão e descompressão de arquivos, e ele suporta a opção de dividir (split) arquivos grandes em partes menores durante o processo de compressão. Isso é útil ao lidar com grandes volumes de dados ou ao precisar dividir um arquivo para facilitar o compartilhamento.

7z a -t7z -m0=lzma -mx=9 -vSIZEg arquivo.7z arquivo: Este comando cria um arquivo 7z chamado "arquivo.7z" usando o método de compressão LZMA com nível máximo (-mx=9). O tamanho de cada arquivo particionado é especificado por SIZE (em gigabytes) com a opção -vSIZEg.

7z x arquivo.7z.001: Este comando extrai o arquivo original do primeiro arquivo particionado (arquivo.7z.001). O 7z reconhece automaticamente os outros arquivos particionados e os utiliza para reconstruir o arquivo original.

Exemplo Prático:

Vamos criar um exemplo prático onde dividimos um grande arquivo em partes usando 7z e, em seguida, unimos essas partes novamente.

```bash

# Criando um arquivo de exemplo
echo "Conteúdo de exemplo" > arquivo.txt

# Comprimindo e dividindo o arquivo em partes de 1MB
7z a -t7z -m0=lzma -mx=9 -v1m arquivo.7z arquivo.txt

# Listando os arquivos particionados
ls arquivo.7z*

# Extraindo o arquivo original a partir do primeiro arquivo particionado
7z x arquivo.7z.001

# Verificando o conteúdo do arquivo extraído
cat arquivo.txt

# Removendo os arquivos temporários
rm arquivo.7z*
```

Este exemplo cria um arquivo chamado "arquivo.txt" com algum conteúdo de exemplo. Em seguida, utiliza o 7z para comprimir e dividir esse arquivo em partes de 1MB cada (-v1m). Após a compressão, o arquivo original é extraído usando o comando 7z x. Finalmente, o conteúdo do arquivo extraído é verificado e os arquivos temporários são removidos.

---
