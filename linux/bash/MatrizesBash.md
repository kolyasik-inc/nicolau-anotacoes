## Matriz Quebrana Nao funciona

```bash
# Declaração de uma matriz bidimensional
matriz=(
  (1, 2, 3)
  (4, 5, 6)
  (7, 8, 9)
)

# Acessando elementos da matriz
echo ${matriz[1][2]}  # Saída: 6
```

---

## Matriz funcional

```bash
#!/bin/zsh

# Declarando a matriz bidimensional usando arrays associativos
matriz=(
  [0,0]=1 [0,1]=2 [0,2]=3
  [1,0]=4 [1,1]=5 [1,2]=6
  [2,0]=7 [2,1]=8 [2,2]=9
)

# Exemplo de acesso aos elementos da matriz
echo "Elemento na linha 1, coluna 2: ${matriz[1,2]}"
```

---

## Script Exemplo

Agora você pode executar o script e escolher a opção desejada no menu para interagir com a matriz. O usuário pode salvar valores em posições específicas e também pode ler os valores de posições específicas da matriz.

```bash
#!/bin/bash

# Inicializando a matriz com zeros (opcional)
for ((i = 0; i < 3; i++)); do
  for ((j = 0; j < 3; j++)); do
    matriz[$i$j]=0
  done
done

# Função para exibir a matriz
exibir_matriz() {
  echo "Matriz:"
  for ((i = 0; i < 3; i++)); do
    for ((j = 0; j < 3; j++)); do
      echo -n "${matriz[$i$j]} "
    done
    echo
  done
}

# Loop do menu
while true; do
  echo "------ Menu ------"
  echo "1. Exibir a matriz"
  echo "2. Salvar valor em um local específico"
  echo "3. Ler valor de um local específico"
  echo "4. Sair"
  echo "------------------"
  read -p "Escolha uma opção: " opcao

  case $opcao in
    1)
      exibir_matriz
      ;;
    2)
      read -p "Informe o valor: " valor
      read -p "Informe a linha (0 a 2): " linha
      read -p "Informe a coluna (0 a 2): " coluna
      matriz[$linha$coluna]=$valor
      ;;
    3)
      read -p "Informe a linha (0 a 2): " linha
      read -p "Informe a coluna (0 a 2): " coluna
      echo "Valor na posição [$linha,$coluna]: ${matriz[$linha$coluna]}"
      ;;
    4)
      echo "Saindo..."
      exit 0
      ;;
    *)
      echo "Opção inválida! Escolha uma opção válida."
      ;;
  esac
done
```

Explicação do código:

  O script começa inicializando a matriz com zeros, mas você pode omitir essa parte se quiser uma matriz inicialmente vazia.
  A função exibir_matriz é criada para exibir o conteúdo da matriz de forma organizada.
  O loop while é usado para manter o menu sendo exibido até que o usuário escolha a opção de sair (opção 4).
  Cada opção do menu é tratada em um bloco case. A opção 1 exibe a matriz usando a função exibir_matriz, a opção 2 permite ao usuário salvar um valor em uma posição específica e a opção 3 permite ao usuário ler o valor de uma posição específica. A opção 4 encerra o loop e o script.1
