## Exportar Para TAR

Sim, é possível extrair uma imagem Docker para um arquivo tar. Isso pode ser útil para fazer backup de imagens, mover imagens entre hosts Docker ou compartilhar imagens com outros usuários.

Para extrair uma imagem Docker, você pode usar o comando docker save para salvar a imagem em um arquivo tar e o comando docker load para carregar a imagem de volta em um host Docker.

Aqui está um exemplo de como extrair uma imagem Docker chamada myimage para um arquivo tar chamado myimage.tar:

```bash
docker save myimage > myimage.tar
```

Para carregar a imagem de volta em um host Docker, você pode usar o comando docker load:

```bash
docker load < myimage.tar
```

Isso irá carregar a imagem myimage de volta no host Docker.

---

## Salvar Imagem Modificada

Inicie um contêiner a partir da imagem do Kali Linux:

```bash
docker run -it kalilinux/kali-rolling
```

Faça as alterações desejadas dentro do contêiner, como instalar pacotes ou criar arquivos.

Saia do contêiner (digitando exit no shell interativo).

Obtenha o ID do contêiner que você acabou de sair:

```bash
docker ps -a
```

Crie uma nova imagem Docker a partir do contêiner modificado:

```bash
docker commit [ID do contêiner] minha-nova-imagem
```

Isso criará uma nova imagem Docker chamada minha-nova-imagem a partir do contêiner modificado. Você pode usar essa nova imagem para iniciar novos contêineres com as alterações que você fez no contêiner original.

---

O comando docker volume create é usado para criar um volume Docker. Um volume Docker é um mecanismo de armazenamento persistente que pode ser usado para armazenar dados fora do sistema de arquivos do contêiner, tornando-os persistentes entre execuções de contêineres.

No exemplo que você forneceu, o comando docker volume create nano-persistent-storage cria um volume Docker chamado nano-persistent-storage. Este volume Docker pode então ser montado em um contêiner Docker usando o comando docker run com a opção --mount, como no exemplo anterior.

Por exemplo, suponha que você tenha criado um volume Docker chamado nano-persistent-storage usando o comando docker volume create, e agora você quer montar esse volume em um contêiner Docker chamado persistent-nano:

```bash
docker run -it --mount source=nano-persistent-storage,target=C:\KeepMyData --name persistent-nano Microsoft/nanoserver
```

Isso iniciará um contêiner Docker a partir da imagem Microsoft/nanoserver e montará o volume Docker nano-persistent-storage no diretório C:\ \KeepMyData dentro do contêiner. Qualquer dado armazenado no diretório C:\KeepMyData dentro do contêiner será persistido no volume Docker nano-persistent-storage, mesmo depois que o contêiner persistent-nano for parado e removido.

Portanto, o comando docker volume create é usado para criar volumes Docker, e o comando docker run com a opção --mount é usado para montar esses volumes em contêineres Docker. Isso permite que você armazene dados fora do sistema de arquivos do contêiner, tornando-os persistentes entre execuções de contêineres.
