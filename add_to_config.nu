def up [] {
    sudo nala upgrade
    flatpak update
    flatpak uninstall --unused
    cargo install-update -a
}

source ~/.oh-my-posh.nu
    
use ~/.config/nu_stuff/cargo-completions.nu *
use ~/.config/nu_stuff/git-completions.nu *
use ~/.config/nu_stuff/man-completions.nu *
    
source ~/.config/nu_stuff/git-aliases.nu
    
use ~/.config/nu_stuff/monokai-dark.nu
$env.config = ($env.config | merge {color_config: (monokai-dark)})
