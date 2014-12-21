require 'spec_helper'
# Rename this file to classname_spec.rb
# Check other boxen modules for examples
# or read http://rspec-puppet.com/tutorial/
describe 'mathiasdotfiles' do
  it do
    should contain_exec('install-mathias-dotfiles').with_command('cd ~ && git clone https://github.com/mathiasbynens/dotfiles.git && cd dotfiles && set -- -f && source bootstrap.sh')
  end
end
