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

Por exemplo, para se conectar ao shell interativo de um contêiner Docker chamado meu-container, você pode usar o seguinte comando:

```bash
docker attach meu-container
```

Isso conectará você ao shell interativo do contêiner meu-container. Você pode então usar o shell interativo para executar comandos dentro do contêiner.

Lembre-se de que, quando você se desconectar do shell interativo dentro do contêiner (digitando exit no shell), o contêiner continuará em execução em segundo plano. Se você quiser parar o contêiner, você pode usar o comando docker stop:

```bash
docker stop meu-container
```

Isso irá parar o contêiner meu-container. Se você quiser remover o contêiner, você pode usar o comando docker rm:

```bash
docker rm meu-container
```

Isso removerá o contêiner meu-container do seu sistema.

---

## Docker em Mount

Você pode fazer isso adicionando um sinal de igual (=) e o diretório de destino após o nome do volume Docker. Por exemplo:

```bash
sudo docker run -it --mount source=kali-persistent-storage,target=/diretorio/de/destino --name persistent-kali kalilinux/kali-rolling
```

Neste exemplo, o volume Docker kali-persistent-storage será montado no diretório /diretorio/de/destino dentro do contêiner persistent-kali.

Se você quiser montar o volume Docker no diretório raiz do contêiner, você pode usar o diretório raiz (/) como o diretório de destino:

```bash
sudo docker run -it --mount source=kali-persistent-storage,target=/ --name persistent-kali kalilinux/kali-rolling
```

Isso montará o volume Docker kali-persistent-storage no diretório raiz do contêiner persistent-kali.

Lembre-se de que, quando você remove um contêiner Docker, todos os dados e alterações feitas dentro do contêiner serão perdidos. Se você quiser manter os dados e alterações feitas dentro do contêiner, você pode usar volumes Docker para persistir esses dados e alterações entre execuções de contêineres.

---

## Docker em Volume

Se você não quiser especificar um diretório de destino para o volume Docker que está sendo montado, você pode usar a opção --volume em vez da opção --mount no comando docker run. A opção --volume não requer um diretório de destino e pode ser usada para montar um volume Docker sem especificar um diretório de destino.

Por exemplo, você pode usar o seguinte comando para montar o volume Docker kali-persistent-storage sem especificar um diretório de destino:

```bash
sudo docker run -it --volume kali-persistent-storage --name persistent-kali kalilinux/kali-rolling
```

Este comando irá iniciar um novo contêiner Docker com o nome persistent-kali, montando o volume Docker kali-persistent-storage sem especificar um diretório de destino. O contêiner será iniciado a partir da imagem kalilinux/kali-rolling.

Lembre-se de que, quando você remove um contêiner Docker, todos os dados e alterações feitas dentro do contêiner serão perdidos. Se você quiser manter os dados e alterações feitas dentro do contêiner, você pode usar volumes Docker para persistir esses dados e alterações entre execuções de contêineres.
