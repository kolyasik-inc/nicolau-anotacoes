# Operadores Matematicos

Certamente! Aqui estão algumas linhas de código exemplificando operações matemáticas em Bash puro:

Adição:

```bash
resultado=$((3 + 5))
echo "A soma é: $resultado"
```
Subtração:

```bash
resultado=$((10 - 3))
echo "A diferença é: $resultado"
```
Multiplicação:

```bash
resultado=$((4 * 6))
echo "O produto é: $resultado"
```
Divisão:

```bash
resultado=$((20 / 4))
echo "O quociente é: $resultado"
```
Resto (Módulo):

```bash
resultado=$((17 % 5))
echo "O resto é: $resultado"
```
Expressões Aritméticas:

```bash
resultado=$(( (5 + 3) * 2 - 1 ))
echo "O resultado da expressão é: $resultado"
```
Incremento:

```bash
contador=5
((contador++))
echo "O contador incrementado é: $contador"
```
Decremento:

```bash

contador=8
((contador--))
echo "O contador decrementado é: $contador"
```
Operações com Variáveis:

```bash
numero1=10
numero2=3

soma=$((numero1 + numero2))
subtracao=$((numero1 - numero2))
multiplicacao=$((numero1 * numero2))
divisao=$((numero1 / numero2))
resto=$((numero1 % numero2))

echo "Soma: $soma"
echo "Subtração: $subtracao"
echo "Multiplicação: $multiplicacao"
echo "Divisão: $divisao"
echo "Resto: $resto"
```
Estes são exemplos básicos de operações matemáticas em Bash. Bash é capaz de realizar várias operações aritméticas diretamente, seja em expressões ou usando variáveis.

---

## Sintaxe Matematica em bash

Certamente! Aqui estão algumas linhas de código exemplificando a sintaxe de expressões matemáticas em Bash:

Expressões Matemáticas Simples:

```bash
resultado=$((5 + 3))
echo "O resultado é: $resultado"
```
Uso de Variáveis em Expressões:

```bash
numero1=10
numero2=3
resultado=$((numero1 + numero2))
echo "A soma é: $resultado"
```
Expressões com Subexpressões:

```bash
resultado=$(( (5 + 3) * 2 - 1 ))
echo "O resultado da expressão é: $resultado"
```
Expressões com Variáveis e Operadores:

```bash
a=6
b=2
c=$((a * b + 3))
echo "O resultado é: $c"
```
Atribuição Direta de Resultado de Expressão:

```bash
resultado=$((10 / 2))
echo "O resultado da divisão é: $resultado"
```
Expressões Aritméticas em Comandos de Substituição:

```bash
resultado=$(($((5 + 3)) * 2))
echo "O resultado é: $resultado"
```
Uso de Variáveis em Comandos de Substituição:

```bash
a=4
b=3
resultado=$((a * b))
echo "O resultado é: $resultado"
```
Expressões com Valores Negativos:

```bash
resultado=$((10 - -3))
echo "O resultado é: $resultado"
```
Lembre-se de que, ao usar expressões matemáticas em Bash, a sintaxe $((...)) é utilizada para avaliar as operações aritméticas. Essa sintaxe permite a realização de cálculos matemáticos diretos e é uma maneira conveniente de realizar operações numéricas em scripts Bash.

---

# Parenteses simples bash

Em Bash, parênteses simples ( ) podem ser usados para criar subshells, onde comandos são executados em um novo processo separado. Aqui estão alguns exemplos de expressões com parênteses simples em Bash:

Execução de Comandos em Subshell:

```bash
(echo "Isso está em um subshell")
```
O comando echo é executado em um subshell temporário.

Atribuição de Variável em Subshell:

```bash
(resultado=$(ls); echo "Conteúdo do diretório: $resultado")
```
O comando ls é executado em um subshell, e seu resultado é atribuído à variável resultado.

Redirecionamento em Subshell:

```bash
(echo "Hello, World" > arquivo.txt)
```
O comando echo é executado em um subshell, e a saída é redirecionada para um arquivo chamado arquivo.txt.

Agrupamento de Comandos:

```bash
(comando1; comando2; comando3)
```
Vários comandos são agrupados em um subshell.

Uso em Estrutura de Controle:

```bash
if (test -f arquivo.txt); then
    echo "O arquivo existe."
else
    echo "O arquivo não existe."
fi
```
O comando test é executado em um subshell dentro da estrutura if.

Execução de Comandos em Background:

```bash
(comando1 & comando2 &)
```
Ambos comando1 e comando2 são executados em segundo plano em subshells separados.

Lembre-se de que parênteses simples ( ) criam subshells, o que significa que as variáveis atribuídas dentro de um subshell não afetam o ambiente externo. Isso é útil em cenários onde você deseja isolar temporariamente os efeitos colaterais de determinados comandos.

---

# Parenteses duplos
Em Bash, parênteses duplos (( ... )) são usados para avaliar expressões aritméticas e lógicas. Aqui estão alguns exemplos de expressões com parênteses duplos em Bash:

Avaliação de Expressão Aritmética:

```bash
((resultado = 5 + 3))
echo "O resultado da expressão é: $resultado"
```
Os parênteses duplos permitem a avaliação direta de expressões aritméticas.

Uso em Estrutura de Controle - Comparação Numérica:

```bash
idade=20
if ((idade > 18)); then
    echo "É maior de idade."
else
    echo "Não é maior de idade."
fi
```
Os parênteses duplos podem ser usados para comparações numéricas em uma estrutura de controle.

Combinação de Condições:

```bash
numero=15
if ((numero > 10 && numero < 20)); then
    echo "O número está entre 10 e 20."
else
    echo "O número não está entre 10 e 20."
fi
```
Os parênteses duplos permitem a combinação de condições em expressões lógicas.

Incremento e Decremento:

```bash
contador=5
((contador++))
echo "O contador incrementado é: $contador"

((contador--))
echo "O contador decrementado é: $contador"
```
Os parênteses duplos podem ser usados para operações de incremento e decremento.

Avaliação de Expressão Lógica:

```bash
a=1
b=0
((resultado = a && b))
echo "O resultado da expressão lógica é: $resultado"
```
Parênteses duplos podem avaliar expressões lógicas, onde 1 representa verdadeiro e 0 representa falso.

Uso em Comandos de Substituição:

```bash
resultado=$(( (5 + 3) * 2 ))
echo "O resultado é: $resultado"
```
Parênteses duplos podem ser utilizados dentro de substituições de comando para avaliação de expressões complexas.

Esses exemplos ilustram o uso de parênteses duplos em Bash para avaliar expressões aritméticas, lógicas e realizar comparações numéricas em estruturas de controle.

---

# Colchetes simples em bash
Em Bash, colchetes [ ] são frequentemente utilizados para realizar testes condicionais e operações de comparação. Aqui estão alguns exemplos de expressões com colchetes em Bash:

Teste de Igualdade:

```bash
nome="João"
if [ "$nome" == "João" ]; then
    echo "O nome é João."
else
    echo "O nome não é João."
fi
```
Teste de Desigualdade:

```bash
numero=10
if [ "$numero" != 5 ]; then
    echo "O número não é 5."
else
    echo "O número é 5."
fi
```
Comparação Numérica:

```bash
idade=20
if [ $idade -gt 18 ]; then
    echo "É maior de idade."
else
    echo "Não é maior de idade."
fi
```
Comparação de Strings (ordem alfabética):

```bash
palavra1="banana"
palavra2="abacaxi"
if [ "$palavra1" \< "$palavra2" ]; then
    echo "$palavra1 vem antes de $palavra2."
else
    echo "$palavra1 vem depois de $palavra2."
fi
```
Teste de Existência de Arquivo:

```bash
arquivo="exemplo.txt"
if [ -e "$arquivo" ]; then
    echo "O arquivo existe."
else
    echo "O arquivo não existe."
fi
```
Teste de Diretório:

```bash
diretorio="pasta"
if [ -d "$diretorio" ]; then
    echo "É um diretório."
else
    echo "Não é um diretório."
fi
```
Combinação de Condições:

```bash
numero=15
if [ $numero -gt 10 ] && [ $numero -lt 20 ]; then
    echo "O número está entre 10 e 20."
else
    echo "O número não está entre 10 e 20."
fi
```
Verificação de Permissões de Arquivo:

```bash
arquivo="exemplo.txt"
if [ -w "$arquivo" ]; then
    echo "O arquivo tem permissão de escrita."
else
    echo "O arquivo não tem permissão de escrita."
fi
```
Esses são apenas alguns exemplos de como você pode utilizar colchetes [ ] em expressões condicionais em Bash. Eles são uma parte importante para realizar testes e comparações dentro de scripts.

---

# Colchetes Duplos
Colchetes duplos [[ ... ]] em Bash oferecem funcionalidades adicionais em comparação com os colchetes simples [ ... ]. Eles são frequentemente utilizados para testes condicionais mais complexos. Aqui estão alguns exemplos de expressões com colchetes duplos em Bash:

Teste de Igualdade:

```bash
nome="João"
if [[ "$nome" == "João" ]]; then
    echo "O nome é João."
else
    echo "O nome não é João."
fi
```
Teste de Desigualdade:

```bash
numero=10
if [[ "$numero" != 5 ]]; then
    echo "O número não é 5."
else
    echo "O número é 5."
fi
```
Comparação Numérica:

```bash
idade=20
if [[ $idade -gt 18 ]]; then
    echo "É maior de idade."
else
    echo "Não é maior de idade."
fi
```
Comparação de Strings (ordem alfabética):

```bash
palavra1="banana"
palavra2="abacaxi"
if [[ "$palavra1" < "$palavra2" ]]; then
    echo "$palavra1 vem antes de $palavra2."
else
    echo "$palavra1 vem depois de $palavra2."
fi
```
Teste de Existência de Arquivo:

```bash
arquivo="exemplo.txt"
if [[ -e "$arquivo" ]]; then
    echo "O arquivo existe."
else
    echo "O arquivo não existe."
fi
```
Teste de Diretório:

```bash
diretorio="pasta"
if [[ -d "$diretorio" ]]; then
    echo "É um diretório."
else
    echo "Não é um diretório."
fi
```
Combinação de Condições:

```bash
numero=15
if [[ $numero -gt 10 && $numero -lt 20 ]]; then
    echo "O número está entre 10 e 20."
else
    echo "O número não está entre 10 e 20."
fi
```
Verificação de Permissões de Arquivo:

```bash
arquivo="exemplo.txt"
if [[ -w "$arquivo" ]]; then
    echo "O arquivo tem permissão de escrita."
else
    echo "O arquivo não tem permissão de escrita."
fi
```
Colchetes duplos fornecem uma sintaxe mais flexível e melhor tratamento de variáveis e expressões em comparação com colchetes simples em Bash.

---

### wildcards

In Bash, the following wildcards can be used to match multiple files:
```
    *: Matches any string of characters, including an empty string. For example, *.txt matches all files with the .txt extension.

    ?: Matches any single character. For example, file?.txt matches files named "file1.txt" or "fileA.txt", but not "file.txt"

    [...]: Matches any one of the characters enclosed in the square brackets. For example, file[abc].txt matches files named "filea.txt", "fileb.txt" or "filec.txt"

    [!...]: Matches any character not enclosed in the square brackets. For example, file[!abc].txt matches files named "filed.txt" or "filez.txt" but not "filea.txt"

    {...}: Matches any of the comma-separated strings enclosed in the curly braces. For example, file{a,b,c}.txt matches files named "filea.txt", "fileb.txt" or "filec.txt"

    ~: Matches the home directory of the current user. For example, ~/Downloads matches the Downloads folder in the home directory of the current user

    ~username: Matches the home directory of the specified user. For example, ~root/Downloads matches the Downloads folder in the home directory of the root user
```
The wildcards that can be used in extended globbing on bash are:
Note: These wildcards can be used in extended globbing with the "extglob" option enabled in the shell with the command "shopt -s extglob".
```
        (asterisk) - Matches zero or more characters.
    ? (question mark) - Matches exactly one character.

     (square brackets) - Matches any one of the characters enclosed.
    ! (exclamation mark) - Negates the match, used inside square brackets.
    @ (at sign) - Matches any one of the given names within the curly braces.
        (plus sign) - Matches one or more of the preceding item.
    ^ (caret) - Matches only files that do not match the following pattern.
```
---

### regular expressions
In Bash, regular expressions can be used in several ways, including:
```
[[ ]] command: used to compare strings or arithmetic expressions

=~ operator: used to compare a string with a regular expression

^ and $ : used to match the start and end of a line respectively

* and ? : used to match zero or more and any single character respectively

[] : used to match a set of characters

{} : used to match a specific number of occurrences of a preceding regular expression
```
list of linux shell regulaer expression
```
    . (dot) - matches any single character
    * - matches zero or more occurrences of the preceding character
    ? - matches zero or one occurrence of the preceding character
    + - matches one or more occurrences of the preceding character
    {n} - matches exactly n occurrences of the preceding character
    {n,} - matches n or more occurrences of the preceding character
    {n,m} - matches between n and m occurrences of the preceding character
    ^ - matches the beginning of a line
    $ - matches the end of a line
    [] - matches any character within the brackets (e.g. [abc] matches "a", "b", or "c")
    [^] - matches any character not within the brackets (e.g. [^abc] matches any character except "a", "b", or "c")
    | - matches either the expression before or the expression after the pipe
    () - groups regular expressions together (e.g. (abc)+ matches one or more occurrences of "abc")
    \ - escapes special characters (e.g. . matches a literal dot)
```
usage of linux shell regular expressions
```
    . (period) which matches any character
    * which matches zero or more of the preceding character
    ^ which matches the start of a line
    $ which matches the end of a line
    [] which matches any character within the square brackets
    {} which defines the number of times the preceding character should be matched
    () which groups characters together
    | which means "or"
```

---
