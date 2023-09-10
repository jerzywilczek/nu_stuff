source ~/.oh-my-posh.nu
    
use ~/Repos/nu_stuff/cargo-completions.nu *
use ~/Repos/nu_stuff/git-completions.nu *
use ~/Repos/nu_stuff/man-completions.nu *
    
source ~/Repos/nu_stuff/git-aliases.nu
    
use ~/Repos/nu_stuff/monokai-dark.nu
$env.config = ($env.config | merge {color_config: (monokai-dark)})
