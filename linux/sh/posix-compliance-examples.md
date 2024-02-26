# Exemplos 001
```bash
Evite: Uso do [[ ... ]] para testes condicionais

bash
Copy code
if [[ $var == "valor" ]]; then
Use: Sintaxe padrão [ ] para testes condicionais

bash
Copy code
if [ "$var" = "valor" ]; then
Evite: Uso do (( ... )) para avaliação numérica

bash
Copy code
if (( x > 10 )); then
Use: Sintaxe padrão [ ] para avaliação numérica

bash
Copy code
if [ "$x" -gt 10 ]; then
Evite: Uso de += para concatenar strings

bash
Copy code
string+=" novo texto"
Use: Concatenação com printf

bash
Copy code
string=$(printf "%s%s" "$string" " novo texto")
Evite: Uso de echo -e para interpretar escapes

bash
Copy code
echo -e "Texto com escape\nNova linha"
Use: printf para interpretar escapes

bash
Copy code
printf "Texto com escape\nNova linha\n"
Evite: Uso de echo $variavel sem aspas

bash
Copy code
echo $variavel
Use: echo "$variavel" para preservar espaços e evitar problemas de palavras-chave

bash
Copy code
echo "$variavel"
```

---

# Exemplos 002
```bash
Evite: Uso de operadores de redirecionamento específicos do Bash

bash
Copy code
comando &>/dev/null
Use: Redirecionamento padrão para compatibilidade

bash
Copy code
comando > /dev/null 2>&1
Evite: Uso de (( ... )) para incremento/decremento numérico

bash
Copy code
((contador++))
Use: Sintaxe padrão [ ] para incremento/decremento numérico

bash
Copy code
contador=$((contador + 1))
Evite: Uso de $(( ... )) para expressões aritméticas

bash
Copy code
resultado=$((x * y))
Use: expr para expressões aritméticas

bash
Copy code
resultado=$(expr $x \* $y)
Evite: Uso de [[ ... ]] em expressões de case

bash
Copy code
case $variavel in
    valor1) ;;
    valor2) ;;
esac
Use: Sintaxe case mais simples

bash
Copy code
case $variavel in
    valor1) ;;
    valor2) ;;
esac
Evite: Uso de $RANDOM para gerar números aleatórios

bash
Copy code
aleatorio=$RANDOM
Use: shuf para gerar números aleatórios

bash
Copy code
aleatorio=$(shuf -i 1-100 -n 1)
Evite: Uso de echo -n para evitar quebras de linha

bash
Copy code
echo -n "Texto"
Use: printf para controle de formatação

bash
Copy code
printf "Texto sem quebra de linha"
Evite: Uso de echo -e para interpretar escapes

bash
Copy code
echo -e "Texto com escape\nNova linha"
Use: printf para interpretar escapes

bash
Copy code
printf "Texto com escape\nNova linha\n"
Evite: Uso de declare para atribuição de variáveis

bash
Copy code
declare variavel="valor"
Use: Atribuição direta de variáveis

bash
Copy code
variavel="valor"
```

---

# Exemplos 003
```bash
Use: Variáveis com aspas em testes

bash
Copy code
if [ "$var" = "valor" ]; then
Evite: Uso de argumentos específicos do Bash, como $RANDOM

bash
Copy code
aleatorio=$RANDOM
Use: Uso de comandos externos para gerar números aleatórios

bash
Copy code
aleatorio=$(shuf -i 1-100 -n 1)
Evite: Uso de [[ ... ]] em expressões condicionais de switch

bash
Copy code
case $variavel in
    valor1) ;;
    valor2) ;;
esac
Use: Sintaxe case mais simples

bash
Copy code
case $variavel in
    valor1) ;;
    valor2) ;;
esac
Evite: Uso do comando read -p para entrada interativa

bash
Copy code
read -p "Digite algo: " resposta
Use: Separar read e echo para entrada interativa

bash
Copy code
echo "Digite algo: "
read resposta
Evite: Uso de echo -n para evitar quebras de linha

bash
Copy code
echo -n "Texto"
Use: Use printf para controle de formatação

bash
Copy code
printf "Texto sem quebra de linha"
Evite: Uso de echo para exibir variáveis sem aspas

bash
Copy code
echo $variavel
Use: echo com aspas para exibir variáveis

bash
Copy code
echo "$variavel"
Evite: Uso de declare para atribuição de variáveis

bash
Copy code
declare variavel="valor"
Use: Atribuição direta de variáveis

bash
Copy code
variavel="valor"
Evite: Uso de == para teste de string

bash
Copy code
if [ "$var" == "
```

---

# Exemplos 004
```bash
Evite: Uso de caractere especial $ sem escape em strings

bash
Copy code
echo "O valor de $variavel"
Use: Escape de $ em strings

bash
Copy code
echo "O valor de \$variavel"
Evite: Uso do operador de concatenação de strings +=

bash
Copy code
string+=" novo texto"
Use: Concatenação de strings com operador de atribuição

bash
Copy code
string="$string novo texto"
Evite: Atribuição com espaços ao redor do sinal de igual

bash
Copy code
variavel = "valor"
Use: Atribuição sem espaços ao redor do sinal de igual

bash
Copy code
variavel="valor"
Evite: Uso de caracteres curinga não suportados no padrão de filename globbing

bash
Copy code
arquivos = *.txt
Use: Sintaxe básica de filename globbing

bash
Copy code
arquivos=*.txt
Evite: Uso de palavras-chave específicas do Bash, como [[, ]]

bash
Copy code
if [[ $condicao ]]; then
Use: Sintaxe básica de teste [ ]

bash
Copy code
if [ "$condicao" ]; then
Evite: Uso de (( )) para avaliação numérica

bash
Copy code
if (( x > 10 )); then
Use: Uso de [ ] para avaliação numérica

bash
Copy code
if [ "$x" -gt 10 ]; then
Evite: Uso de operadores lógicos de curto-circuito (&&, ||) em testes

bash
Copy code
if [ "$var" = "valor" ] && [ "$outro" = "outro" ]; then
Use: Testes separados com if

bash
Copy code
if [ "$var" = "valor" ]; then
    if [ "$outro" = "outro" ]; then
    fi
fi
Evite: Uso de variáveis sem aspas em testes

bash
Copy code
if [ $var = "valor" ]; then
```

---

# Exemplos 005
```bash
Evite: Operadores de teste avançados (-eq, -ne, etc.)

bash
Copy code
if [ $a -eq $b ]; then
Use: Operadores de teste básicos (=, !=, etc.)

bash
Copy code
if [ "$a" = "$b" ]; then
Evite: Redirecionamento com descritores específicos (>&, <&, etc.)

bash
Copy code
comando 2>&1
Use: Redirecionamento básico

bash
Copy code
comando 2>&1
Evite: Substituição de processo com $(comando)

bash
Copy code
resultado=$(comando)
Use: Substituição de processo com comando

bash
Copy code
resultado=`comando`
Evite: Sintaxe específica do echo (echo -e)

bash
Copy code
echo -e "Texto"
Use: Sintaxe básica do echo

bash
Copy code
echo "Texto"
Evite: Uso de chaves em strings

bash
Copy code
string="Exemplo ${var}"
Use: String sem chaves

bash
Copy code
string="Exemplo $var"
```

---

# Exemplos 007
```bash
Evite: Shebang para Bash

bash
Copy code
#!/bin/bash
Use: Shebang para Bourne Shell

bash
Copy code
#!/bin/sh
Evite: Arrays associativos (Bash-specific)

bash
Copy code
declare -A assoc_array
Use: Arrays simples

bash
Copy code
array=("elemento1" "elemento2")
Evite: Subshell com process substitution

bash
Copy code
(comando1; comando2)
Use: Sintaxe básica de subshell

bash
Copy code
comando | processo
Evite: Redirecionamento avançado

bash
Copy code
comando > >(processo)
Use: Redirecionamento básico

bash
Copy code
comando | processo
Evite: Teste condicional avançado [[ ]]

bash
Copy code
if [[ $var == "valor" ]]; then
Use: Teste condicional básico [ ]

bash
Copy code
if [ "$var" = "valor" ]; then
```

---

# Exemplos 008
```bash
# Evite: Shebang para Bash
#!/bin/bash

# Use: Shebang para Bourne Shell
#!/bin/sh

# Evite: Arrays associativos (Bash-specific)
declare -A assoc_array

# Use: Arrays simples
array=("elemento1" "elemento2")

# Evite: Subshell com process substitution
(comando1; comando2)

# Use: Sintaxe básica de subshell
comando | processo

# Evite: Redirecionamento avançado
comando > >(processo)

# Use: Redirecionamento básico
comando | processo

# Evite: Teste condicional avançado [[ ]]
if [[ $var == "valor" ]]; then

# Use: Teste condicional básico [ ]
if [ "$var" = "valor" ]; then

# Evite: Operadores de teste avançados (-eq, -ne, etc.)
if [ $a -eq $b ]; then

# Use: Operadores de teste básicos (=, !=, etc.)
if [ "$a" = "$b" ]; then

# Evite: Redirecionamento com descritores específicos (>&, <&, etc.)
comando 2>&1

# Use: Redirecionamento básico
comando 2>&1

# Evite: Substituição de processo com $(comando)
resultado=$(comando)

# Use: Substituição de processo com `comando`
resultado=`comando`

# Evite: Sintaxe específica do echo (echo -e)
echo -e "Texto"

# Use: Sintaxe básica do echo
echo "Texto"

# Evite: Uso de chaves em strings
string="Exemplo ${var}"

# Use: String sem chaves
string="Exemplo $var"
```

---

# Exemplos 009
```bash
# Evite: Shebang para Bash
#!/bin/bash

# Use: Shebang para Bourne Shell
#!/bin/sh

# Evite: Arrays associativos (Bash-specific)
declare -A assoc_array

# Use: Arrays simples
array=("elemento1" "elemento2")

# Evite: Subshell com process substitution
(comando1; comando2)

# Use: Sintaxe básica de subshell
comando | processo

# Evite: Redirecionamento avançado
comando > >(processo)

# Use: Redirecionamento básico
comando | processo

# Evite: Teste condicional avançado [[ ]]
if [[ $var == "valor" ]]; then

# Use: Teste condicional básico [ ]
if [ "$var" = "valor" ]; then

# Evite: Uso de chaves em strings
string="Exemplo ${var}"

# Use: String sem chaves
string="Exemplo $var"
```

---

# Prefacio
```bash
O Bash é um shell que oferece recursos adicionais em comparação com o Bourne Shell (sh) mais antigo. Portanto, a maioria dos scripts Bash é compatível com o Bourne Shell, mas nem todos os recursos do Bash estão presentes no sh. Aqui estão algumas dicas gerais ao escrever scripts Bash para garantir uma maior compatibilidade com o sh:

Shebang:

Use #!/bin/sh como a shebang no início do script para garantir que o script seja interpretado pelo Bourne Shell.
bash
Copy code
#!/bin/sh
Arrays:

Evite o uso de arrays associativos (declare -A array) que são específicos do Bash. Use arrays simples quando necessário.
bash
Copy code
# Em vez de
declare -A assoc_array

# Use
array=("elemento1" "elemento2")
Subshells:

Alguns usos específicos de subshells podem ser incompatíveis. Evite o uso excessivo de subshells em expressões complexas.
bash
Copy code
# Evite
(comando1; comando2)
Redirecionamento de Processos:

Alguns recursos específicos de redirecionamento podem ser incompatíveis. Use uma sintaxe mais básica quando possível.
bash
Copy code
# Evite
comando > >(processo)

# Use
comando | processo
Teste Condicional:

Evite o uso de testes condicionais avançados, como [[ ]]. Use [ ] para testes condicionais mais básicos.
bash
Copy code
# Em vez de
if [[ $var == "valor" ]]; then

# Use
if [ "$var" = "valor" ]; then
Braces em Strings:

Evite o uso de chaves {} em strings, pois pode causar problemas em shells mais antigos.
bash
Copy code
# Evite
string="Exemplo ${var}"

# Use
string="Exemplo $var"
```
