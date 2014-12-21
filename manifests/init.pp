# Public: Install Mathias's dotfiles to Home
#
# Examples
#
#   include mathiasdotfiles
class mathiasdotfiles {
  exec {'install-mathias-dotfiles':
    command => 'cd ~ && git clone https://github.com/theand/mathiasdotfiles.git',
    creates => "/Users/${::luser}/dotfiles",
    timeout => 0
  }
}
