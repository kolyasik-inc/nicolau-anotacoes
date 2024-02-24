# **Introdução ao Bash:**
O Bash (Bourne Again SHell) é um interpretador de comandos Unix e uma linguagem de script. Ele fornece uma interface de linha de comando para interagir com o sistema operacional. Aqui está um exemplo simples de um script Bash:

```bash
#!/bin/bash
# Este é um comentário
echo "Olá, Mundo!"
```

### Comandos Básicos do Bash:

```bash

# Listar arquivos no diretório
ls

# Mudar de diretório
cd /caminho/do/diretorio

# Exibir conteúdo de um arquivo
cat arquivo.txt

# Criar um novo diretório
mkdir novo_diretorio
```

### Variáveis no Bash:

```bash
# Atribuir valor a uma variável
nome="João"
echo "Olá, $nome!"

# Variáveis de ambiente
echo "Diretório atual: $PWD"
```

### Estruturas de Controle de Fluxo (if, else, elif, case):

```bash
# Estrutura condicional if
if [ "$idade" -ge 18 ]; then
  echo "Você é maior de idade."
else
  echo "Você é menor de idade."
fi

# Estrutura case
case "$opcao" in
  1)
    echo "Opção 1 selecionada."
    ;;
  2)
    echo "Opção 2 selecionada."
    ;;
  *)
    echo "Opção inválida."
    ;;
esac
```

### Loops (for, while, until):

```bash
# Loop for
for i in {1..5}; do
  echo "Número: $i"
done

# Loop while
contador=0
while [ $contador -lt 5 ]; do
  echo "Contador: $contador"
  ((contador++))
done

# Loop until
n=0
until [ $n -ge 5 ]; do
  echo "Número: $n"
  ((n++))
done
```

### Funções no Bash:

```bash
# Definir uma função
minha_funcao() {
  echo "Esta é uma função."
}

# Chamar a função
minha_funcao
```

### Redirecionamento de Entrada e Saída:

```bash
# Redirecionar saída para um arquivo
echo "Conteúdo do arquivo" > arquivo.txt

# Redirecionar entrada de um arquivo
cat < arquivo.txt
```

### Pipes e Comandos em Cascata:

```bash
# Usar pipes
ls -l | grep "arquivo"

# Comandos em cascata
comando1 && comando2
comando3 || comando4
```

### Expansão de Parâmetros:

```bash
# Expansão de variáveis
nome="Maria"
echo "Olá, $nome!"

# Expansão de curingas (wildcards)
echo arquivos: *.txt
```

### Expressões Regulares no Bash:

```bash
# Testar uma string contra uma expressão regular
if [[ "$string" =~ ^[0-9]+$ ]]; then
  echo "É um número."
else
  echo "Não é um número."
fi
```

### Substituição de Comandos:

```bash
# Substituição de comando
data_atual=$(date)
echo "Data atual: $data_atual"
```

### Gerenciamento de Processos:

```bash
# Executar um processo em segundo plano
comando &

# Listar processos em execução
ps aux

# Matar um processo por PID
kill -9 PID
```

### Manipulação de Arquivos e Diretórios:

```bash
# Copiar arquivo
cp arquivo.txt destino/

# Mover arquivo
mv arquivo.txt novo_destino/

# Remover arquivo
rm arquivo.txt

# Criar link simbólico
ln -s arquivo.txt link_simbolico
```

### Job Control:

```bash
# Executar um comando em segundo plano
comando &

# Colocar um comando em segundo plano
bg

# Trazer um comando para o primeiro plano
fg
```

### Personalização do Ambiente Bash (aliases, prompt):

```bash
# Criar alias
alias ll="ls -la"

# Personalizar prompt
PS1="[\u@\h \W]\$ "
```

### Gerenciamento de Pacotes (apt, yum, etc.):

```bash
# Atualizar pacotes (apt)
sudo apt update

# Instalar pacote (apt)
sudo apt install nome_do_pacote

# Remover pacote (apt)
sudo apt remove nome_do_pacote
```

---

## Scripting Avançado no Bash:

### Trabalhando com Arrays:

```bash
# Declarar e acessar um array
frutas=("maçã" "banana" "laranja")
echo "Primeira fruta: ${frutas[0]}"
```

### Manipulação de Strings:

```bash
# Concatenar strings
nome="João"
sobrenome="Silva"
nome_completo="$nome $sobrenome"
echo "Nome completo: $nome_completo"

# Obter comprimento da string
echo "Comprimento do nome: ${#nome}"
```

### Segurança no Bash (proteção contra injeção de código, etc.):

```bash
# Evitar injeção de código no input
read -p "Digite seu nome: " nome
nome_sem_injecao=$(echo "$nome" | sed 's/[^a-zA-Z0-9]//g')
echo "Olá, $nome_sem_injecao!"
Estes são exemplos simples para cada tópico. Recomenda-se aprofundar-se em cada tema para uma compreensão mais completa.
```


**~`FIM`~**

---
