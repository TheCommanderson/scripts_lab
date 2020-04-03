['ffi-libc', 'ffi-portaudio', 'ruby-audio', 'audio-playback'].each do |_gem|
  begin
    gem _gem
  rescue Gem::LoadError
    puts '<-> installing gem ' + _gem
    Gem.install(_gem)
    gem _gem
  end
  require _gem

