set shell := ["sh", "-c"]
set windows-shell := ["powershell", "-c"]

## https://winstall.app/

mod yt-dlp

@_menu:
    just --list

[windows]
install winget_id:
    winget install --id={{winget_id}}  -e

[linux]
install nix_pkg:
    nix-env -iA nixpkgs.{{nix_pkg}}

[windows]
install_all:
    winget install --id=Casey.Just  -e
    just install junegunn.fzf
    just install uutils.coreutils
    
[windows]
list:
    winget list

[linux]
list
    nix-env -q

[windows]
search pkg:
    winget search {{pkg}}









    


