# Automação de Testes em API com HTTParty e Cucumber
![Imagem capa](https://cdn-images-1.medium.com/max/1351/1*vKN5omQFsclccLZBKcKU8g.png)

## json-server
comando para instalação do json-server

#### Linux
``` shell
$ sudo apt-get install npm
$ npm install json-server
```
#### Windows
Baixe o instalador : http://nodejs.org/download/
1. Após baixar, instale o aplicativo
1. Depois execute o comando no prompt
```shell
c:\ npm install json-server
```
#### Executando o json-server
1. acesse a pasta **[ json-server ]** do projeto
1. execute o comando:
    ```shell
    $ node_modules/.bin/json-server --watch db.json
    ```
1. Abrir no navegador o endereço
    *  http://localhost:3000

## cucumber

#### Pré-requisitos

* Possuir ruby instalado **> 2.0.0**
* https://www.ruby-lang.org/pt/downloads/

#### Executando o cucumber
1. Acesse a parta **[ API ]**
1. Execute o comando:
```shell
$ cucumber
```