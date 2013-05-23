# Vtex Speed

O Vtex Speed é um boilerplate do grunt para E-commerces Vtex.

Requer [node](http://nodejs.org/) e [grunt](http://gruntjs.com/) (`npm i -g grunt-cli`).

### Como configurar

No arquivo `remote.json` configure os valores de `remote.host` e `proxy.host` para sua loja.

### Como iniciar

    npm i
    (sudo) grunt

Divirta-se! :)

Os arquivos compilados podem ser encontrados na pasta `/build`.

### Funcionalidades

- exibe arquivos de `.css` `.js` `.jpg` `.png` e `.gif` do servidor local
- gera arquivos de `.css` a partir de arquivos `.less`
- gera arquivos de `.js` a partir de arquivos `.coffee`
- gera um `.min.css` de cada `.css`
- gera um `all.min.css` com todos os `.min.css`
- gera um `.min.js` de cada `.js`
- gera um `all.min.js` com todos os `.min.js`

### Estrutura de pastas

- `src`
    - `coffee` - arquivos CoffeeScript
    - `image` - arquivo de imagem
    - `js` - arquivos de javascript files
	- `style` - arquivos de CSS e LESS
- `Gruntfile.coffee` - arquivo de configuração do grunt. contém todas as tarefas de build do grunt
- `remote.json` - arquivo de configuração do [Remote](https://github.com/gadr90/remote)
- `build` - pasta criada quando um build é feito

### Agradecimento

Vtex Speed foi inspirado no [Speedbag](https://github.com/vtex/speedbag). Obrigado ao [Guilherme Rodrigues](https://github.com/gadr90), o pai do Speedbag.

------
