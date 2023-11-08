def up [] {
    if ((sys | get host.name) == "Arch Linux") {
        paru
    } else {
        sudo nala upgrade
    }
    
    flatpak update
    flatpak uninstall --unused
    cargo install-update -a
}

def "refresh config" [] {
    nu $'($env.NU_STUFF_PATH)/clean_install.nu'
}

# get the du output for the children of this folder, 
# highest to lowest size
def "child sizes" [
    folder: path                               # folder to check
]: nothing -> table {
    glob $'($folder)/*' | each {|p| du $p} | flatten | sort-by -r physical
}

source ~/.oh-my-posh.nu
    
use ~/.config/nu_stuff/cargo-completions.nu *
use ~/.config/nu_stuff/git-completions.nu *
use ~/.config/nu_stuff/man-completions.nu *
    
source ~/.config/nu_stuff/git-aliases.nu
    
use ~/.config/nu_stuff/monokai-dark.nu
$env.config = ($env.config | merge {color_config: (monokai-dark)})
