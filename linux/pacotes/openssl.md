# OpenSSL

---

## Chaves apartir de texto

Sim, é possível criar uma chave criptográfica usando o OpenSSL a partir de um texto. A seguir estão os passos básicos para criar uma chave privada RSA usando OpenSSL e um texto como senha:

```bash
# Gere uma chave privada RSA usando o OpenSSL
openssl genpkey -algorithm RSA -aes256 -out private_key.pem

# Converta a chave privada para o formato PEM
openssl rsa -pubout -in private_key.pem -out public_key.pem
```

Este comando solicitará que você insira uma senha. Essa senha será usada para proteger a chave privada.
Se desejar uma abordagem mais interativa, você pode usar o seguinte comando:

```bash
openssl genpkey -algorithm RSA -aes256 -out private_key.pem -pass stdin
```

Este comando permitirá que você insira a senha diretamente na linha de comando.
Certifique-se de armazenar de forma segura a chave privada gerada, pois ela é sensível e deve ser protegida adequadamente.

---

## Gerar Chave PBKDF2 a Partir de uma Frase

Sim, você pode usar o OpenSSL para derivar uma chave criptográfica a partir de uma senha (frase) usando uma função de hash. Normalmente, isso é feito com o auxílio da função PBKDF2 (Password-Based Key Derivation Function 2). Aqui está um exemplo usando o OpenSSL:

```bash
# Substitua "sua_senha_aqui" pelo texto da sua frase
sua_senha="sua_senha_aqui"

# Gere uma chave derivada usando PBKDF2
openssl enc -aes-256-cbc -k "$sua_senha" -P -md sha1
```

Neste exemplo, a chave é derivada usando AES-256 em modo CBC (Cipher Block Chaining) com a senha fornecida. Este comando imprimirá a chave derivada e o IV (Initialization Vector). Lembre-se de que o IV é usado para inicializar o processo de cifragem e também deve ser mantido em segredo.

Certifique-se de escolher um bom método para armazenar e proteger a senha e a chave resultante, pois ambas são informações sensíveis.

---

## Chaves publicas e privadas com curva eliptica

Para criar chaves públicas e privadas usando curvas elípticas com o OpenSSL, você pode usar o seguinte conjunto de comandos. Este exemplo usa a curva elíptica prime256v1 (também conhecida como P-256), mas você pode escolher outra curva se preferir.

Criar uma chave privada e salvá-la em um arquivo:

```bash
openssl ecparam -name prime256v1 -genkey -noout -out chave-privada.pem
```

Extrair a chave pública da chave privada e salvá-la em um arquivo:

```bash
openssl ec -in chave-privada.pem -pubout -out chave-publica.pem
```

Agora, você terá dois arquivos:

chave-privada.pem: Contém a chave privada.
chave-publica.pem: Contém a chave pública correspondente.
Lembre-se de que, ao trabalhar com criptografia de curva elíptica, a segurança do sistema depende da proteção adequada da chave privada. Certifique-se de armazenar a chave privada de forma segura e não a compartilhe indevidamente.

Além disso, você pode escolher diferentes curvas elípticas dependendo dos requisitos de segurança e desempenho do seu sistema, como secp384r1 ou secp521r1. Basta substituir prime256v1 pelos parâmetros da curva desejada nos comandos acima.

---

## Criptografia Assimetrica com RSA

Para criptografar um arquivo assimetricamente usando OpenSSL, você pode usar o algoritmo de criptografia assimétrica RSA. Aqui estão os passos básicos:

Gerar um Par de Chaves (Pública e Privada):

```bash
openssl genpkey -algorithm RSA -out chave-privada.pem
openssl rsa -pubout -in chave-privada.pem -out chave-publica.pem
```

Isso criará dois arquivos:

chave-privada.pem: Contém a chave privada.
chave-publica.pem: Contém a chave pública correspondente.
Criptografar o Arquivo com a Chave Pública:

```bash
openssl rsautl -encrypt -pubin -inkey chave-publica.pem -in arquivo-para-cifrar.txt -out arquivo-cifrado.enc
```

Substitua arquivo-para-cifrar.txt pelo nome do arquivo que você deseja criptografar e arquivo-cifrado.enc pelo nome do arquivo de saída criptografado.

Descriptografar o Arquivo com a Chave Privada:

```bash
openssl rsautl -decrypt -inkey chave-privada.pem -in arquivo-cifrado.enc -out arquivo-descriptografado.txt
```

Lembre-se de que a segurança desse processo depende fortemente da proteção adequada da chave privada. Certifique-se de armazenar a chave privada de forma segura e não a compartilhe indevidamente.

Esses são passos básicos, e em um cenário real, você também pode considerar adicionar opções adicionais, como uso de algoritmos de hash para a geração de assinaturas ou uso de criptografia de curva elíptica para maior eficiência em alguns casos.

---

## Encriptar com senha

Você pode usar o OpenSSL para encriptar dados usando senhas. Uma maneira comum de fazer isso é através do comando enc. Aqui está um exemplo básico:

Encriptação usando Senha:

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

Desencriptação usando Senha:

```bash
# Desencriptar usando AES-256-CBC e a mesma senha
openssl enc -d -aes-256-cbc -in arquivo_cifrado.enc -out arquivo_desencriptado.txt
```

Neste exemplo, -d indica desencriptação. Assim como antes, você será solicitado a inserir a mesma senha que foi usada para encriptar o arquivo.

Lembre-se de que a segurança do processo depende da segurança da senha. Escolha senhas fortes e mantenha-as seguras. Além disso, considere utilizar funções de derivação de chave, como PBKDF2, ao encriptar com senhas, para aumentar a segurança do processo.

---

# OPENSSL TUTORIAIS ALEATORIOS ABAIXO

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
