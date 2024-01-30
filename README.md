# neovim config

## Conf

Esta configuración se basa en el video de ThePrimeagen (From 0 to LSP) la mayoría
de los bindings son suyos, con algunos remaps propios.

## Antes de usar se necesita instalar:

* ripgrep
* fzf
* NodeJS
* tmux
* fd (fd-find)

## Instalación derivadas de debian

Hay un Makefile para ello, basta con hacer:
```sh
make dep
```
Baja las dependencias necesarias y
```
make install
```
Ejecuta PackerSync en modo headless de nvim, así cuando se abra por primera vez
estaran los plugins instalados.

---

Para packer.nvim:
```sh
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```
 Una vez instalado packer y los programas necesarios, basta con:
 ```vim
 :PackerSync
 ```
Copiar el contenido de scripts/ al path y darle permisos de escritura
```sh
cp scripts/tmux-sessionizer $HOME/.local/bin
chmod +x $HOME/.local/bin/tmux-sessionizer
```

 Recomiendo reiniciar neovim despues de la instalación.

## Mappings personalizados
leader  = Espacio   
C-... = C es CTRL   

* leader fe - Explorador de Archivos
* C-s - Guardar archivo actual
* C-h,j,k,l - Mover entre ventanas (derecha,abajo,arriba,izquierda)
* Shift+j (J) - En modo visual mueve un bloque de código seleccionado hacía abajo
* Shift+k (K) - En modo visual mueve un bloque de código seleccionado hacía arriba
* C-f - Abre una sesión de tmux (ctrl+b L para moverte entre ellas)
* leader x - Le da permisos de ejecución al archivo actual (chmod +x archivo)
* leader cb - Cierra buffer actual
* leader gs - Git status
* leader ff - FuzzyFinder busca archivos
* leader fb - FuzzyFinder lista buffers
* leader u - Undotree (Modificaciones de archivos)
* C-p - Archivos git

## Instalar LSP,Linters y demás

El plugin Mason está instalado, se puede llamar con el comando:   
:Mason


## Scripts
[scripts/tmux-sessionizer - ThePrimeagen](https://github.com/ThePrimeagen/.dotfiles/blob/master/bin/.local/scripts/tmux-sessionizer)
[From 0 to LSP - ThePrimeagen](https://www.youtube.com/watch?v=w7i4amO_zaE)
