# Array

Aqui estão exemplos de uso de arrays em diferentes estruturas no Bash, incluindo while, for, until, if, case, read e expressões matemáticas:


### while com Array:

```bash

#Copy code
nomes=("Alice" "Bob" "Charlie")
i=0

while [ $i -lt ${#nomes[@]} ]; do
    echo "Nome: ${nomes[i]}"
    ((i++))
done

```

### for com Array:

```bash

#Copy code
nomes=("Alice" "Bob" "Charlie")

for nome in "${nomes[@]}"; do
    echo "Nome: $nome"
done

```

### until com Array:

```bash

#Copy code
nomes=("Alice" "Bob" "Charlie")
i=0

until [ $i -ge ${#nomes[@]} ]; do
    echo "Nome: ${nomes[i]}"
    ((i++))
done
if com Array:
bash
Copy code
nomes=("Alice" "Bob" "Charlie")

if [ "${nomes[1]}" == "Bob" ]; then
    echo "Bob encontrado!"
fi

```

###case com Array:

```bash

# Copy code
nomes=("Alice" "Bob" "Charlie")
nome_pesquisado="Bob"

case "${nomes[@]}" in
    *"$nome_pesquisado"*)
        echo "$nome_pesquisado encontrado!"
        ;;
    *)
        echo "$nome_pesquisado não encontrado."
        ;;
esac

```

### read para Preencher um Array:

```bash

#Copy code
echo "Digite nomes separados por espaço:"
read -a nomes_digitados

echo "Nomes digitados:"
for nome in "${nomes_digitados[@]}"; do
    echo $nome
done

```

### Expressões Matemáticas com Array:

```bash

# Copy code
numeros=(3 5 8)
soma=0

for num in "${numeros[@]}"; do
    ((soma += num))
done

echo "Soma dos números: $soma"

```

Estes são apenas exemplos básicos para ilustrar como usar arrays em diferentes contextos no Bash. Adapte conforme necessário para suas necessidades específicas.

---
