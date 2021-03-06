MRuby::Gem::Specification.new('mruby-marshal') do |spec|
  spec.license = 'MIT'
  spec.author = 'take-cheeze'
  spec.summary = 'Marhshal module for mruby'

  add_dependency 'mruby-pure-regexp', :github => 'h2so5/mruby-pure-regexp'
  add_dependency 'mruby-string-ext', :core => 'mruby-string-ext'
  add_dependency 'mruby-struct', :core => 'mruby-struct'

  add_test_dependency 'mruby-stringio'
end
