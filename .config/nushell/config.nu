# nu configuration
$env.config.show_banner = false
$env.config.edit_mode = 'vi'
$env.PROMPT_INDICATOR_VI_NORMAL = '>'
$env.PROMPT_INDICATOR_VI_INSERT = ':'

# alias
alias fdpro = fd --hidden --max-depth 5

# enviraonment variables
$env.FNM_MULTISHELL_PATH = "/run/user/1000/fnm_multishells/32644_1777769098481"
$env.FNM_VERSION_FILE_STRATEGY = "local"
$env.FNM_DIR = $"($env.HOME)/.local/share/fnm"
$env.FNM_LOGLEVEL = "info"
$env.FNM_NODE_DIST_MIRROR = "https://nodejs.org/dist"
$env.FNM_COREPACK_ENABLED = "false"
$env.FNM_RESOLVE_ENGINES = "true"
$env.FNM_ARCH = "x64"
$env.RUSTUP_DIST_SERVER = "https://cloudfront-static.rust-lang.org"
$env.EDITOR = "helix"

#PATH
$env.path = $env.PATH | split row ( char esep )
  | prepend ( $env.HOME | path join .cargo bin )
  | prepend ( $env.HOME | path join .local bin )
  | prepend ( $env.HOME | path join go bin )
  | prepend ( $env.FNM_MULTISHELL_PATH | path join bin )

# command
fnm use 25 o+e> /dev/null
