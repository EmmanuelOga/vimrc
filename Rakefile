require "shellwords"
require "yaml"

desc "link vimrc to ~/.vimrc"
task :link_rcs do
  %w[ vimrc gvimrc ].each do |file|
    dest = File.expand_path("~/.#{file}")
    ln_s(File.expand_path(file), dest) unless File.exist?(dest)
  end
end

BUNDLES = YAML.load_file(File.expand_path("~/.vim/bundles.yaml"))
BUNDLES_BASE_PATH = "~/.vim/bundle"

def bundle_path(*args)
  File.expand_path File.join(BUNDLES_BASE_PATH, *args)
end

desc "installation bundles"
task :update_bundles do
  BUNDLES.each do |name, url|
    puts("Updating #{name}")
    if File.exist?(bundle_path(name, ".git"))
      system("cd #{bundle_path(name).shellescape}; git pull --rebase")
    else
      system("git clone #{url.shellescape} #{bundle_path(name).shellescape}")
    end
  end
  Rake::Task[:cleanup_bundles].invoke
end

CLEANUP_EXCLUDES = %w[rsense]

desc "remove old directories"
task :cleanup_bundles do
  puts "Looking up bundles to cleanup..."
  current = (BUNDLES.keys + CLEANUP_EXCLUDES).map { |name| bundle_path(name) }

  Dir[File.expand_path(File.join(BUNDLES_BASE_PATH, "*"))].each do |path|
    unless current.include?(path)
      puts(path)
      print("...is not in the list of bundles. Run with BUNDLES_CLEANUP=1")
      system("rm -r #{path.shellescape}") if ENV["BUNDLES_CLEANUP"]
    end
  end

  puts "Done."
end
