# Neovim

My personal Neovim configurationm, formerly scaffolded by the Kickstart.nvim project, now by the NvChad project.

## Installation

1. Remove any existing Neovim configuration files and directories (if you have any):

```bash
rm -rf "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim && rm -rf "${XDG_CONFIG_HOME:-$HOME/.local}"/share/nvim
```

2. Clone this repository:

```bash
git clone git@github.com:Khthonian/Neovim.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim && nvim
```
