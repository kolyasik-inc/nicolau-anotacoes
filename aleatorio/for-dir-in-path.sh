#!/bin/bash

# Lê o caminho do diretório inicial
read -p "Digite o caminho do diretório inicial: " diretorio_inicial

# Lê o caminho do diretório destino
read -p "Digite o caminho do diretório destino: " diretorio_destino

# Cria um array para armazenar os nomes dos diretórios
nomes_diretorios=()

# Obtém os nomes dos diretórios dentro do diretório inicial
for diretorio in "$diretorio_inicial"/*; do
    if [ -d "$diretorio" ]; then
        nome_diretorio=$(basename "$diretorio")
        nomes_diretorios+=("$nome_diretorio")
    fi
done

# Cria os diretórios no diretório destino
for nome_diretorio in "${nomes_diretorios[@]}"; do
    mkdir -p "$diretorio_destino/$nome_diretorio"
done

echo "Diretórios criados com sucesso!"
