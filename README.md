# Neovim config

My Neovim config for Windows and Linux, using LSPs for Lua, Python and Zig.

## Setup

Install:

* `neovim`
* `fd`
* `fzf`

Clone the repository:

```shell
git clone https://github.com/rmarquis/nvim $HOME/.config/nvim
```

```powershell
git clone https://github.com/rmarquis/nvim $HOME/AppData/Local/nvim
```

## Language support

### Lua

Built-in.

Mason tooling:

* `lua-language-server`
* `stylua`

### Typscript

Built-in.

Mason tooling:

* typescript-language-server

### Python

Use `rye` to add the python interpreter in the path, then:

```shell
rye config --set-bool behavior.global-python=true
$HOME\.rye\shims\python.exe -m pip install pynvim
```
Install LSP components:

```shell
rye tools install python-lsp-server
rye tools install ruff-lsp
```

Mason tooling:

* `python-lsp-server`
* `ruff-lsp`

### Zig

Ensure the `zig` executable is in the path.

Mason tooling:

* `zls`


## Plugins

| Category         | Plugins      |
| -----------------|--------------|
| plugin manager   | lazy |
| completion       | nvim-cmp, cmp-nvim-lsp, cmp_luasnip, friendly-snippets |
| editing support  | autopairs |
| file explorer    | neotree |
| fuzzy finder     | telescope, telescope-ui-select |
| git              | gitsigns |
| lsp              | nvim-lspconfig, mason-lspconfig, mason, none-ls, treesitter |
| startup          | dashboard |
| statusline       | lualine |
| tabline          | barbar |
| theme            | nightfox (nordfox variant) |
| split and window | smart-splits |
| keybinding       | whick-key |

## Resources

Global resources:

* [awesome-neovim](https://github.com/rockerBOO/awesome-neovim)
* [neovimcraft](https://neovimcraft.com/)

Inspiration:

* [From 0 to IDE in NEOVIM from scratch](https://www.youtube.com/watch?v=zHTeCSVAFNY&list=PLsz00TDipIffreIaUNk64KxTIkQaGguqn) by typecraft
* [The Only Video You Need to Get Started with Neovim](https://www.youtube.com/watch?v=m8C0Cq9Uv9o) by TJ DeVries
* [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim)
* [mezdelex/NeovimConfig](https://github.com/mezdelex/NeovimConfig)
* [radleylewis/nvim](https://github.com/radleylewis/nvim)

