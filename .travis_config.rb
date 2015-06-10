MRuby::Build.new do |conf|
  toolchain :clang

  enable_bintest
  enable_debug

  plugin_flags = %W[-Xclang -load -Xclang "#{MRUBY_ROOT}/../libmruby-clang-checker.so" -Xclang -add-plugin -Xclang mruby-clang-checker]
  cc.flags += plugin_flags
  cxx.flags += plugin_flags

  conf.gem '.'
end
