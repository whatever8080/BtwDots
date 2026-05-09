use std/log

def main [f?: string] {
  if $f == null {
    print "
      Usage: nu copy_file.nu [PATH_TO_MAPPER_FILE]
    "
  } else if not ( $f | path exists ) {
    log error $"File ($f) not found"; exit 1
  } else {
    open $f | get dirs | items { |k,v| mkdir ($v.target.0 | path expand); $v.include | flatten | each { |f| cp -f ( $v.path.0 | path join $f | path expand ) ($v.target.0 | path expand) } }
    log info "copy file successfully"
  } 
}
