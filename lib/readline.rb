if defined? JRUBY_VERSION
  begin
    gem 'reline'
    require 'reline'
  rescue LoadError
    $stderr << "You must install the `reline` gem to use readline"
  end

  Readline = Reline
else
  begin
    require 'readline.so'
  rescue LoadError
    require 'reline'
    Readline = Reline
  end
end
