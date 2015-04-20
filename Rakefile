def brew_install(package, *options)
  `brew list #{package}`
  return if $?.success?

  sh "brew install #{package} #{options.join ' '}"
end

def step(description)
  description = "-- #{description} "
  description = description.ljust(80, '-')
  puts
  puts "\e[32m#{description}\e[0m"
end

def app_path(name)
  path = "/Applications/#{name}.app"
  ["~#{path}", path].each do |full_path|
    return full_path if File.directory?(full_path)
  end

  return nil
end

def app?(name)
  return !app_path(name).nil?
end

def link_file(original_filename, symlink_filename)
  original_path = File.expand_path(original_filename)
  symlink_path = File.expand_path(symlink_filename)
  if File.exists?(symlink_path)
    # Symlink already configured properly. Leave it alone.
    return if File.symlink?(symlink_path) and File.readlink(symlink_path) == original_path
    # Never move user's files without creating backups first
    number = 1
    loop do
      backup_path = "#{symlink_path}.bak"
      if number > 1
        backup_path = "#{backup_path}#{number}"
      end
      if File.exists?(backup_path)
        number += 1
        next
      end
      mv symlink_path, backup_path, :verbose => true
      break
    end
  end
  ln_s original_path, symlink_path, :verbose => true
end

namespace :install do

  desc 'Generate package list for homebrew'
  task :packages do
    step 'Package generator...'
    # Create a file relative from current file if one exists goto step 3
    # Grab all brewed packages
    # Populate the PACKAGES constant
    # Merge additional packages
    # ("brew list | ruby -e 'a=[];p ARGF.each_line.map {|v| a.push(v.chomp);}'")
    # addtl_packages = []
    # PACKAGES.push(addtl_packages).flatten
  end

  PACKAGES = ['bash', 'openssl', 'curl-ca-bundle', 'python', 'the_silver_searcher', 'elasticsearch', 'ack', 'chruby',
              'ruby-install', 'node', 'git', 'elixir', 'go', 'postgis', 'mutt', 'imagemagick', 'phantomjs', 'tree', 'tig',
              'htop', 'redis', 'riak', 'postgresql',  'mongodb', 'mysql', 'fish', 'weechat']

  desc 'Install iTerm'
  task :iterm do
    step 'iterm2'
    unless app? 'iTerm'
      system <<-SHELL
        curl -L -o iterm.zip https://iterm2.com/downloads/stable/iTerm2_v2_0.zip && \
          unzip iterm.zip && \
          mv iTerm.app /Applications && \
          rm iterm.zip
      SHELL
    end
  end

  desc 'Update or Install Brew'
  task :brew do
    step 'Homebrew'
    unless system('which brew > /dev/null || ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"')
      raise "Homebrew must be installed before continuing."
    end
  end

  PACKAGES.each do |package|
    desc "Install #{package}"
    task "#{package.to_sym}" do
      step "#{package}"
      brew_install "#{package}"
    end
  end

  VIM_PLUGINS = [
    "git://github.com/scrooloose/nerdtree.git",
    "git://github.com/kien/ctrlp.vim.git"
  ]

  desc "Install VIM plugins"
  task :vim_plugins do
    puts "Cleaning out VIM plugins directory"
    plugins_dir = ENV["HOME"] +  "/.vim/bundle"
    Dir["#{plugins_dir}/*"].each { |d|
      FileUtils.rm_rf d 
    }

    puts "Installing VIM plugins"
    VIM_PLUGINS.each do |url|
      dir = ENV["HOME"] + "/.vim/bundle/" + url.split('/').last.sub(/\.git$/, '')
      puts "unpacking #{url} into #{dir}"
      `git clone #{url} #{dir}`
      FileUtils.rm_rf(File.join(dir, ".git"))
    end
  end

end

desc 'Install these config files.'
task :default do
  step 'symlink'

  link_file 'bash'            , '~/.bash'
  link_file 'bashrc'          , '~/.bashrc'
  link_file 'bash_profile'    , '~/.bash_profile'
  link_file 'bash_aliases'    , '~/.bash_aliases'
  link_file 'gitconfig'       , '~/.gitconfig'
  link_file 'vim'             , '~/.vim'
  link_file 'vimrc'           , '~/.vimrc'
  link_file 'tmux'            , '~/.tmux'
  link_file 'tmux/tmux.conf'  , '~/.tmux.conf'

  # link_file 'ssh_config'      , '~/.ssh/ssh_config'
  # link_file 'ctags/ctags'     , '~/.ctags'
  # link_file 'agignore'        , '~/.agignore'
  # link_file 'gitignore_global', '~/.gitignore_global'
  # link_file 'gitmessage.txt'  , '~/.gitmessage.txt'
  # link_file 'pryrc'           , '~/.pryrc'
  # link_file 'railsrc'         , '~/.railsrc'
  # link_file 'gemrc'           , '~/.gemrc'
  # link_file 'tigrc'           , '~/.tigrc'
  # link_file 'muttrc'          , '~/.muttrc'
  # link_file 'inputrc'         , '~/.inputrc'
  # link_file 'urlview'         , '~/.urlview'
  # link_file 'psqlrc'          , '~/.psqlrc'
  # link_file 'psqlrc.local'    , '~/.psqlrc.local'
  # link_file 'com.googlecode.iterm2.plist', '~/com.googlecode.iterm2.plist/'

  Rake::Task['install:iterm'].invoke
  Rake::Task['install:brew'].invoke

  # PACKAGES.each do |package|
  #   Rake::Task["install:#{package}"].invoke
  # end

  # step 'iterm2 colorschemes'
  # colorschemes = `defaults read com.googlecode.iterm2 'Custom Color Presets'`
  # dark         = colorschemes !~ /Solarized Dark/
  # light        = colorschemes !~ /Solarized Light/
  # lucario      = colorschemes !~ /Lucario/
  # sh('open', '-a', '/Applications/iTerm.app', File.expand_path('iterm2-colors-solarized/Solarized Dark.itermcolors')) if dark
  # sh('open', '-a', '/Applications/iTerm.app', File.expand_path('iterm2-colors-solarized/Solarized Light.itermcolors')) if light

  # step 'iterm2 profiles'
  # puts
  # puts "  Set up Solarized Light or Dark profiles in iTerm2."
  # puts "  (You can do this in 'Preferences' -> 'Profiles' by adding a new profile,"
  # puts "  'Colors' tab, 'Load Presets...' and choosing a Solarized option.)"
  # puts "  Set Terminal Type to 'xterm-256color' in the 'Terminal' tab."
  # puts
  # puts "  Installation Complete!"
  # puts

end
