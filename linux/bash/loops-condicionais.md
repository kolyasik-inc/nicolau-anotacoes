# Laço de repetição FOR no bash
Certamente! Aqui estão algumas linhas de código exemplificando o uso do loop for em Bash:

For com uma sequência numérica:

```bash
for i in {1..5}; do
    echo "Iteração $i"
done
```
Este exemplo usa um loop for para iterar sobre uma sequência numérica de 1 a 5.

For com uma lista de elementos:

```bash
frutas=("Maçã" "Banana" "Uva" "Pera")
for fruta in "${frutas[@]}"; do
    echo "Fruta: $fruta"
done
```
Neste exemplo, o loop for itera sobre os elementos de uma lista de frutas.

For com uma variável numérica:

```bash
limite=3
for ((i=1; i<=limite; i++)); do
    echo "Contagem: $i"
done
```
Aqui, o loop for usa uma variável numérica para contar até um determinado limite (3 neste caso).

For com arquivos em um diretório:

```bash
for arquivo in /caminho/do/diretorio/*; do
    echo "Arquivo: $arquivo"
done
```
Este exemplo utiliza um loop for para iterar sobre todos os arquivos em um diretório específico.

For com argumentos de linha de comando:

```bash
for arg in "$@"; do
    echo "Argumento: $arg"
done
```
Aqui, o loop for itera sobre os argumentos passados para o script.

For com comando de substituição:

```bash
for arquivo in $(ls /caminho/do/diretorio); do
    echo "Arquivo: $arquivo"
done
```
Neste exemplo, o loop for utiliza a substituição de comando para iterar sobre os arquivos no diretório.

Esses exemplos mostram algumas maneiras diferentes de usar o loop for em scripts Bash para lidar com diferentes situações e tipos de dados.

---

# Laço de Repetição WHILE
Certamente! Aqui estão algumas linhas de código exemplificando o uso do loop while em Bash:

While com uma condição simples:

```bash
contador=1
while [ $contador -le 5 ]; do
    echo "Contagem: $contador"
    ((contador++))
done
```
Este exemplo usa um loop while para contar de 1 a 5.

While com leitura de entrada:

```bash
resposta=""
while [ "$resposta" != "sim" ]; do
    read -p "Você quer continuar? (sim/não): " resposta
done
echo "Ótimo, continuando!"
```
Neste exemplo, o loop while continua pedindo ao usuário para continuar até que a resposta seja "sim".

While com execução de comandos:

```bash
tentativas=0
while ping -c 1 -w 1 exemplo.com >/dev/null; do
    ((tentativas++))
    echo "Tentativa $tentativas: exemplo.com está online."
done
```
echo "exemplo.com está offline após $tentativas tentativas."
Neste caso, o loop while verifica se o comando ping para "exemplo.com" é bem-sucedido e continua executando até que o ping falhe.

While com leitura de arquivo:

```bash
arquivo="exemplo.txt"
while IFS= read -r linha; do
    echo "Linha lida: $linha"
done < "$arquivo"
```
Este exemplo usa um loop while para ler cada linha de um arquivo chamado "exemplo.txt".

While com condições compostas:

```bash
numero=0
while [ $numero -lt 10 ] || [ $numero -eq 0 ]; do
    echo "Número: $numero"
    ((numero++))
done
```
Neste exemplo, o loop while continua enquanto o número é menor que 10 ou igual a 0.

Estes são apenas alguns exemplos básicos de como você pode usar o loop while em scripts Bash para diferentes finalidades.

---

# Comparacao CASE em bash

O comando case em Bash é utilizado para realizar comparações múltiplas em uma expressão. Aqui estão alguns exemplos de como usar o case em diferentes contextos:

Case Simples:

```bash
echo "Escolha uma opção (A, B, ou C):"
read escolha

case $escolha in
    A)
        echo "Você escolheu a opção A."
        ;;
    B)
        echo "Você escolheu a opção B."
        ;;
    C)
        echo "Você escolheu a opção C."
        ;;
    *)
        echo "Opção inválida."
        ;;
esac
```
Este exemplo mostra como usar case para lidar com diferentes opções fornecidas pelo usuário.

Case com Padrões:

```bash
echo "Digite uma cor (vermelho, verde ou azul):"
read cor

case $cor in
    vermelho)
        echo "A cor é intensa."
        ;;
    verde | azul)
        echo "A cor é relaxante."
        ;;
    *)
        echo "Cor desconhecida."
        ;;
esac
```
Aqui, o case é usado com padrões alternativos usando | (ou).

Case com Expressões Regulares:

```bash
echo "Digite um número:"
read numero

case $numero in
    [0-9])
        echo "Você digitou um dígito."
        ;;
    [0-9][0-9])
        echo "Você digitou um número de dois dígitos."
        ;;
    *)
        echo "Entrada inválida."
        ;;
esac
```
Este exemplo usa expressões regulares para verificar se o input é um dígito ou um número de dois dígitos.

Case em Substring:

```bash
palavra="OpenAI"

case $palavra in
    *pen*)
        echo "A palavra contém 'pen'."
        ;;
    *AI)
        echo "A palavra termina com 'AI'."
        ;;
    *)
        echo "Não há correspondência conhecida."
        ;;
esac
```
Neste exemplo, o case é usado para verificar substrings dentro da palavra.

O case em Bash é uma ferramenta versátil para realizar várias comparações em uma expressão, tornando o código mais legível e estruturado.

---

In a shell script, the for loop can use a variety of variables to control the iteration process. The most common variable used in a for loop is i, which acts as a counter that increments with each iteration. Other variables that can be used include file, line, word, and others, depending on the specific needs of the loop and the data being processed. The important thing is that the variable used in the for loop should be distinct and meaningful, and should be properly set before the loop is executed.
```bash
for variable_name in list_of_values; do
    commands
done
```
For example, the following script will print the numbers 1 to 10:
```bash
for i in {1..10}; do
    echo $i
done
```
For example `*.txt` . The commands within the loop will be executed for each file in the list. The variable file takes the value of each file in the list in each iteration.
```bash
for file in *.txt; do
    [commands to be executed]
done
```

---
