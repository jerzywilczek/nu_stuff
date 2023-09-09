source ~/.oh-my-posh.nu
    
use ~/Repos/nu_scripts/custom-completions/cargo/cargo-completions.nu *
use ~/Repos/nu_scripts/custom-completions/git/git-completions.nu *
use ~/Repos/nu_scripts/custom-completions/man/man-completions.nu *
    
source ~/Repos/nu_scripts/aliases/git/git-aliases.nu
source ~/Repos/nu_scripts/aliases/exa/exa-aliases.nu
    
use ~/Repos/nu_scripts/themes/themes/monokai-dark.nu
$env.config = ($env.config | merge {color_config: (monokai-dark)})

