# README

Este repositório destinado as minha configurações pessoais do Neovim.

O plugin manager escolhido para esse projeto foi o **Lazy**.

Para informações mais detalhadas vá até a página do [LAZY](https://github.com/folke/lazy.nvim) no Github.


## Neovim - Instalação

Entre no site do [Neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim) e faça a instalação conforme achar mais conveniente.


## Configurações anteriores

No caso de já ter instalado anteriormente o neovim é recomendado uma das seguintes opções:

#### Fazer o backup dos arquivos configuração:

```sh
# required
mv ~/.config/nvim{,.bak}

# optional but recommended
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}
```


#### Remover os arquivos de configuração:

```sh
rm -rf ~/.config/nvim ~/.local/share/nvim
```

ou 

```sh
# required
rm -rf ~/.config/nvim

# optional but recommended
rm -rf ~/.local/share/nvim
rm -rf ~/.local/state/nvim
rm -rf ~/.cache/nvim
```


## Dependências

Antes de clonar este repositório é importante instalar algumas dependências para o perfeito funcionamento de alguns plugins.

Escolha a maneira mais conveniente de instalar essas dependências de acordo com seu sistema operacional.

- Git
- Make e cmake
- Python e pip
- Nodejs e npm
- Rust e Cargo
- On mac install `pbcopy` or on linux install `xsel` should be builtin to fixing copy and paste.

Após instalar o **Node** e o **npm** devemos fazer alguns ajustes para evitar erros de permissões.

```sh
mkdir ~/.npm-global &&
npm config set prefix '~/.npm-global' &&
export PATH=~/.npm-global/bin:$PATH &&      # Temporary change PATH
source ~/.profile &&
npm install -g jshint &&
NPM_CONFIG_PREFIX=~/.npm-global
```

Para instalar o **Rust** execute o seguinte comando:

```sh
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh &&
echo "export PATH=~/.cargo/bin/:$PATH" >> .bashrc # Permanently change PATH
```

## Clonando o repositório

Agora vamos clonar o repositório de configurações.

```Sh
git clone <meu_repo> ~/.config/nvim
```

## Plugin manager Lazzy

Após clonar o repositório tudo deve estar funcionando perfeitamante. Ou seja, 
todos os plugins instalados e prontos para uso.

O lazy possui uma interface que permite que atualize, intale e remova plugins.

Para abri o Lazy no neovim basta digitar Lazy no modo de comando.

```vim
:Lazy
```
<!---
TODO

## Documentação

## Plugin manager Lazzy

--->
