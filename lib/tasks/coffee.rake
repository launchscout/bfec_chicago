def compile_file(file)
  js_file = file.ext("js").gsub(/\.js\.js/, ".js")
  contents = File.read(file)
  require_lines = []
  contents.each_line do |line|
    require_lines << line.gsub(/^#= require/, "//= require") if line =~ /^#= require/
  end
  require_lines.compact
  File.open(js_file, "w") do |f|
    f.puts require_lines.join("\n")
    f.puts CoffeeScript.compile(contents)
  end
  # File.delete file
end

namespace :coffee do

  desc "Compile all the .coffee files in app/assets/javascripts"
  task compile_all: :environment do
    FileList["app/assets/javascripts/**/*.coffee"].each do |file|
      compile_file(file)
    end
  end

  desc "Compile a coffeescript file"
  task compile: :environment do
    compile_file(ENV["FILE"])
  end


end