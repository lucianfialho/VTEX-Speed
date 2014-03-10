# VTEX Speed

O VTEX Speed é um boilerplate do Grunt para E-commerces VTEX.

Requer [Node](http://nodejs.org/) e [Grunt](http://gruntjs.com/) (`npm i -g grunt-cli`).

## Configure

### Insira os dados da sua loja

No arquivo `remote.json` mude o texto `sitename` para o nome da sua loja nas chaves `remote.host` e `proxy.host`.

### Instale as dependências do npm
    npm i

## Inicie o VTEX Speed

    (sudo) grunt

## Divirta-se! :)

Os arquivos compilados podem ser encontrados na pasta `/build`.

## Funcionalidades

- exibe arquivos de `.css` `.js` `.jpg` `.png` e `.gif` do servidor local
- gera arquivos de `.css` a partir de arquivos `.less`
- gera arquivos de `.js` a partir de arquivos `.coffee`
- gera um `.min.css` de cada `.css`
- gera um `all.min.css` com todos os `.min.css`
- gera um `.min.js` de cada `.js`
- gera um `all.min.js` com todos os `.min.js`

## Estrutura de pastas

- `src`
    - `coffee` - arquivos CoffeeScript
    - `image` - arquivo de imagem
    - `js` - arquivos de javascript files
    - `style` - arquivos de CSS e LESS
- `Gruntfile.coffee` - arquivo de configuração do grunt. Contém todas as tarefas de build do grunt
- `remote.json` - arquivo de configuração do [Remote](https://github.com/gadr90/remote)
- `build` - pasta criada quando um build é feito

## Agradecimento

VTEX Speed foi inspirado no [Speedbag](https://github.com/vtex/speedbag). Obrigado ao [Guilherme Rodrigues](https://github.com/gadr90), pai do Speedbag.

------
