# fish-fasd-fzf
Fish plugin integrating fasd and fzf.

## Setup
First install [fasd](https://github.com/clvv/fasd) and [fzf](https://github.com/junegunn/fzf).

Then add the plugin with [fisher](https://github.com/jorgebucaran/fisher):
```
fisher add foltik/fish-fasd-fzf
```

## Features
The following standard fasd commands are implemented:

```sh
f # find file
d # find dir
a # find file or dir
z # cd to dir
```

Additionally, each command supports interactively selecting the result with fzf if no arguments are passed.

## Example Usage
```sh
# Jump to a recently visited directory
you@local ~> z proj
you@local ~/Documents/code/project> 

# Edit a recently accessed file
you@local ~> vim (f config.fish)

# Edit a recently accessed file, selected interactively
you@local ~> vim (f)
```
