
---

## OpenSSL com Senha

### Encriptação usando Senha:

```bash
echo "Mensagem secreta" > arquivo_original.txt

# Encriptar usando AES-256-CBC e uma senha
openssl enc -aes-256-cbc -salt -in arquivo_original.txt -out arquivo_cifrado.enc
```
Neste exemplo:

aes-256-cbc: Indica o uso do algoritmo de cifragem simétrica AES com modo de operação CBC.
-salt: Adiciona salt (um valor aleatório) para tornar ataques por dicionário mais difíceis.
-in arquivo_original.txt: Especifica o arquivo original que você deseja cifrar.
-out arquivo_cifrado.enc: Especifica o nome do arquivo cifrado de saída.
Ao executar esse comando, você será solicitado a inserir uma senha. A senha será usada para derivar uma chave, que por sua vez será usada para cifrar o arquivo.

### Desencriptação usando Senha:

```bash
# Desencriptar usando AES-256-CBC e a mesma senha
openssl enc -d -aes-256-cbc -in arquivo_cifrado.enc -out arquivo_desencriptado.txt
```
Neste exemplo, -d indica desencriptação. Assim como antes, você será solicitado a inserir a mesma senha que foi usada para encriptar o arquivo.

Lembre-se de que a segurança do processo depende da segurança da senha. Escolha senhas fortes e mantenha-as seguras. Além disso, considere utilizar funções de derivação de chave, como PBKDF2, ao encriptar com senhas, para aumentar a segurança do processo.

---
