use std/log

def main [...args] {
  print "
    Usage: nu theme_apply.nu [command]

    Availabel commands:
    termusic
  "
}

def "main termusic" [] {
  let input = $"($env.HOME)/.config/termusic/themes/Matugen.yml"
  let output = $"($env.HOME)/.config/termusic/tui.toml"
  if not ( $input | path exists ) {
    log error $"Error opening file ($input)"    
    exit 121
  }
  if not ( $output | path exists ) {
    log error $"File ($output) not found"
    exit 121
  }
  open $output | merge deep ( open $input | rename --column { colors: "theme"}) | save -f $output

  log info "Apply theme to termusic successfully"
}
