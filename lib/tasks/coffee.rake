namespace :coffee do
  desc "Compile all the .coffee files in app/assets/javascripts"
  task compile: :environment do
    FileList["app/assets/javascripts/**/*.coffee"].each do |file|
      js_file = file.ext("js").gsub(/js\.js/, ".js")
      contents = File.read(file)
      require_lines = contents.each_line do |line|
        line.gsub(/^#= require/, "//= require") if line =~ /^#= require/
      end
      require_lines.compact
      File.open(js_file, "w") do |f|
        f.puts require_lines
        f.puts CoffeeScript.compile(contents)
      end
      # File.delete file
    end
  end
end