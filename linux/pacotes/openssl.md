# OpenSSL

---

### PBKDF2 (Password-Based Key Derivation Function 2)
```bash
openssl passwd -6 -salt <salt_value> -in <password_file>
```

---

### weak

```bash
openssl enc -aes-256-cbc -k "${suasenha}" -P -md sha1
```

---

### passwd

```bash
openssl enc -aes-256-cbc -salt -in arquivo_original.txt -out arquivo_cifrado.enc
openssl enc -d -aes-256-cbc -in arquivo_cifrado.enc -out arquivo_desencriptado.txt
```

---

### rand

```bash
openssl rand -des -out chave-des.bin 8
openssl rand -hex 16
openssl rand -out chave-simetrica.bin 32
```

---

### RSA

```bash
openssl genrsa -out ./private-key.pem 3072
openssl rsa -in ./private-key.pem -pubout -out ./public-key.pem
openssl rsautl -encrypt -pubin -inkey chave-publica.pem -in arquivo-para-cifrar.txt -out arquivo-cifrado.enc
```

---

### ECC

```bash
openssl ecparam -name prime256v1 -genkey -noout -out chave-privada.pem
openssl ec -in chave-privada.pem -pubout -out chave-publica.pem
```

---

### Criptografar dados com a chave binária usando AES-256-CBC:

```bash
echo -n "SeuTextoAqui" | openssl enc -aes-256-cbc -out texto_cifrado.enc -pass file:chave.bin
```

Este comando criptografa o texto "SeuTextoAqui" usando AES-256-CBC e salva o resultado no arquivo texto_cifrado.enc. A chave é fornecida a partir do arquivo binário chave.bin.

Descriptografar os dados:

```bash
openssl enc -d -aes-256-cbc -in texto_cifrado.enc -pass file:chave.bin
```

Este comando descriptografa os dados do arquivo texto_cifrado.enc usando a mesma chave binária do arquivo chave.bin.

---

~end~
---
