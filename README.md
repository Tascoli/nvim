# README

Este repositório destinado as minha configurações pessoais do Neovim.

O plugin manager escolhido para esse projeto foi o **Lazy**.

Para informações mais detalhadas vá até a página do [LAZY](https://github.com/folke/lazy.nvim) no Github.


## Configurações anteriores

No caso de já ter instalado anteriormente o neovim é recomendado uma das seguintes opções:

##### Fazer o backup dos arquivos configuração:

```sh
# required
mv ~/.config/nvim{,.bak}

# optional but recommended
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}
```

##### Remover os arquivos de configuração:

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

## Instalando Neovim

Entre no site do [Neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim) e faça a instalação conforme achar mais conveniente.

##### Dependências

Antes de clonar este repositório é importante instalar algumas dependências para o perfeito funcionamento de alguns plugins.


Escolha a maneira mais conveniente de instalar essas dependências de acordo com seu sistema operacional.

- Git
- Make e cmake
- Lua e Luarocks
- Python e pip
- Nodejs e npm
- Ripgrep and fd for telescope
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

## Lazzy - Plugin manager

Após clonar o repositório tudo deve estar funcionando perfeitamante. Ou seja, todos os plugins instalados e prontos para uso.

O lazy possui uma interface que permite que atualize, intale e remova plugins.

Para abri o Lazy no neovim basta digitar Lazy no modo de comando.

```vim
:Lazy
```

O arquivo `.config/nvim/lua/user/lazy_conf.lua` que contém o bootstrap do Lazy e sua configuração básica. É nele que também
é definido quais pastas o Lazy irá buscar os arquivos.

Para adicionar um **novo** plugin devemos coloca-lo dentro de um novo arquivo(com o nome do plugin) e move-lo para a pasta `plugins`. A estrutura básica do arquivo deve seguir o exemplo abaixo:

```lua
    return {
        -- the colorscheme should be available when starting Neovim
        {
            "folke/tokyonight.nvim",
            lazy = false, -- make sure we load this during startup if it is your main colorscheme
            priority = 1000, -- make sure to load this before all the other start plugins
            config = function()
                 -- load the colorscheme here
            vim.cmd([[colorscheme tokyonight]])
            end,
        }
    }
```

Note que no exemplo acima o **nome do repositório** do plugin está entre *" "* e é separado por **vírgula** das demais  propriedades do lazy para aquele plugin.

Para as propriedades e configurações do plugin, propriamente dito,  é interessante criar uma função chamada **config** como no exemplo abaixo.


```lua
    return{

       { "nvim-tree/nvim-tree.lua",
        version = '*',
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        lazy = false,
        config = function()
            require("nvim-tree").setup({

                sort_by = "case_sensitive",
                view = {
                    adaptive_size = true,
                    width = 20,
                 },

                git = {
                    enable = true,
                },

                renderer = {
                    group_empty = true,
                    highlight_git = true,

                    icons = {
                        webdev_colors = true,
                        git_placement = "before",
                        padding = " ",
                        symlink_arrow = " ➛ ",

                        glyphs = {
                            folder = {
                                arrow_closed = "", -- arrow when folder is closed
                                arrow_open = "", -- arrow when folder is open
                            },
                        },

                        show = {
                            file = true,
                            folder = true,
                            folder_arrow = true,
                            git = false,
                        },
                    },
                },

                filters = {
                    dotfiles = true,
                },
            })
        end,
       }
}
```
### Referências

[Lua Language Docs](https://www.lua.org/docs.html)

[Neovim Docs Lua](https://neovim.io/doc/user/lua.html)

[nvim-lua-guide](https://github.com/ellisonleao/nvim-lua-guide)

-------------------------------------------------
-------------------------------------------------

### General Keymaps

Configuração de alguns atalhos para o neovim.
`<Leader>` is ***space***.

#### Generic

|MODE               |Keymaps      |Command             |Descripion                                  |
|:----:             |:----        |:----:              |:----                                       |
|**I - C - V - X**  | `jk`        | `<ESC>`            | j and k fast is the same thing than ESCAPE |
|**N**              |`<Leader>s`  |`:update<CR>`       | Save changes                               |
|**N**              |`<Leader>q`  |`:quit<CR>`         | Quit NeovoimSave changes                   |
|**N**              |`<Leader>x ` |`:bd<CR>`           | Delete buffer (Close tab                   |
|**Any**            |`<Leader>l`  |`<ESC>:nohl<CR>`    | Removes highlight of your last search      |

#### Split window

|MODE     |Keymaps      |Command       |Descripion                   |
|:----:   |:----        |:----:        |:----                        |
|**N**    |`<Leader>sv` |`<C-w>v`      | Split window vertically     |
|**N**    |`<Leader>sh` |`<C-w>s`      | Split windwo horizontally   |


#### Navigate

|MODE               |Keymaps      |Command  |Descripion             |
|:----:             |:----        |:----:   |:----                  |
|**N**              |`<Shift>l `  |` `      | Move to tab right     |
|**N**              |`<Shift>h `  |` `      | Move to tab left      |
|**N**              |`<C-h>`      |`<C-w>h` | Move to window left   |
|**N**              |`<C-j>`      |`<C-w>j` | Move to window down   |
|**N**              |`<C-h>k`     |`<C-w>k` | Move to window up     |
|**N**              |`<C-h>l`     |`<C-w>l` | Move to window right  |


#### Increment / Decrement Numbers


|MODE        |Keymaps      |Command   |Descripion |
|:----:      |:----        |:----:    |:----      |
|**Any**     |`<Leader>=`  |`<C-a>`   | Increment |
|**Any**     |`<Leader>-`  |`<C-x>`   | Decrement |


#### Copy and paste

|MODE       |Keymaps      |Command |Descripion               |
|:----:     |:----        | :----: |:----                    |
|**Any**    |`<Leader>y`  |`"+y`   | Copy to Clipboard       |
|**Any**    |`<Leader>p`  |`"+p`   | Paste from Clipboard    |
|**Any**    |`<Leader>Y`  |`"*y`   | Copy to Primary Area    |
|**Any**    |`<Leader>P`  |`"*p`   | Paste from Primary Area |


<!-- TABEL MODEL  -->
<!-- |MODE               |Keymaps      |Command            |Descripion      | -->
<!-- |:----:             |:----        |     :----:        |:----           | -->
<!-- |**N**              |` `  |` `      |     | -->

### Plugins Keymaps

Espaço para observações sobre os plugins.

#### Nvim Tree keymaps

Comandos básicos para NvimTree.


|Default Keymaps |Command         |Descripion      |
|:----           |     :----:     |:----           |
|`H`             |toggle_dotfiles |toggle visibility of dotfiles via \|filters.dotfiles\| option|
|`<C-t>`         |tabnew          |open the file in a new tab|
|`<Tab>`         |preview         |open the file as a preview (keeps the cursor in the tree)|
|`r`             |rename          |rename a file|
|`a`             |create          |add a file; leaving a trailing `/` will add a directory|
|`d`             |remove          |delete a file (will prompt for confirmation)|
|`gy`            |copy_absolute_path|copy absolute path to system clipboard|
|`q`             |close           |close tree window|
|`W`             |collapse_all    |collapse the whole tree|


Para saber mais `:h nvim-tree.lua`.

#### ToggleTerm

<!-- TABEL MODEL  -->
<!-- |MODE               |Keymaps      |Command            |Descripion      | -->
<!-- |:----:             |:----        |     :----:        |:----           | -->
<!-- |**Any**              |` `  |` `      |     | -->

Keymap:

\<leader> +  t - Open/Close ToggleTerm

#### Comments

Keymap:

\<leader> + / - Comment and Uncomment

#### TODO Comments

|MODE               |Keymaps       |Command                 |Descripion    |
|:----:             |:----         |     :----:             |:----         |
|**N**              |`<leader>td`  |`<cmd>TodoLocList<CR> ` |TodoLocList   |
|**N**              |`<leader>tt`  |`<cmd>TodoLocList<CR> ` |TodoTelescope |

#### Markdown

Ainda não foi configurado atalho para abrir o markdown-preview. Digite: `:MarkdownPreview`

#### Tranparent

Para habilitar digite `:TransparentEnable`.

#### Telescope

|MODE      |Keymaps       |Command                                                 |Descripion           |
|:----:    |:----         |     :----:                                             |:----                |
|**N**     |`<leader>ff`  |`<cmd>lua require('telescope.builtin').find_files()<cr>`|Telescope find files |
|**N**     |`<leader>fg`  |`<cmd>lua require('telescope.builtin').live_grep()<cr>` |Telescope live grep  |
|**N**     |`<leader>fb`  |`<cmd>lua require('telescope.builtin').buffers()<cr>`   |Telescope buffers    |
|**N**     |`<leader>fh`  |`<cmd>lua require('telescope.builtin').help_tags()<cr>` |Telescope help tags  |


##### Default Mappings

Mappings are fully customizable.
Many familiar mapping patterns are set up as defaults.

| Mappings       | Action                                                    |
| -------------- | --------------------------------------------------------- |
| `<C-n>/<Down>` | Next item                                                 |
| `<C-p>/<Up>`   | Previous item                                             |
| `j/k`          | Next/previous (in normal mode)                            |
| `H/M/L`        | Select High/Middle/Low (in normal mode)                   |
| `gg/G`         | Select the first/last item (in normal mode)               |
| `<CR>`         | Confirm selection                                         |
| `<C-x>`        | Go to file selection as a split                           |
| `<C-v>`        | Go to file selection as a vsplit                          |
| `<C-t>`        | Go to a file in a new tab                                 |
| `<C-u>`        | Scroll up in preview window                               |
| `<C-d>`        | Scroll down in preview window                             |
| `<C-f>`        | Scroll left in preview window                             |
| `<C-k>`        | Scroll right in preview window                            |
| `<M-f>`        | Scroll left in results window                             |
| `<M-k>`        | Scroll right in results window                            |
| `<C-/>`        | Show mappings for picker actions (insert mode)            |
| `?`            | Show mappings for picker actions (normal mode)            |
| `<C-c>`        | Close telescope (insert mode)                             |
| `<Esc>`        | Close telescope (in normal mode)                          |
| `<Tab>`        | Toggle selection and move to next selection               |
| `<S-Tab>`      | Toggle selection and move to prev selection               |
| `<C-q>`        | Send all items not filtered to quickfixlist (qflist)      |
| `<M-q>`        | Send all selected items to qflist                         |
| `<C-r><C-w>`   | Insert cword in original window into prompt (insert mode) |
| `<C-r><C-a>`   | Insert cWORD in original window into prompt (insert mode) |
| `<C-r><C-f>`   | Insert cfile in original window into prompt (insert mode) |
| `<C-r><C-l>`   | Insert cline in original window into prompt (insert mode) |






<!-- Dependecies: -->
<!---->
<!-- - ripgrep -->


<!---
TODO

## Documentação

## Plugin manager Lazzy

--->
