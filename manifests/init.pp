# Public: Install Mathias's dotfiles to /Applications
#
# Examples
#
#   include mathiasdotfiles
class mathiasdotfiles {
  exec {'install-mathias-dotfiles':
    command => 'cd ~ && git clone https://github.com/mathiasbynens/dotfiles.git && cd dotfiles && set -- -f && source bootstrap.sh',
    creates => "/Users/${::luser}/dotfiles",
    timeout => 0
  }
}
