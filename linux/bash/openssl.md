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
end
---
