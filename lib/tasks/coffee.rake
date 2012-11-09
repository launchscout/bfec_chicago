namespace :coffee do
  desc "Compile all the .coffee files in app/assets/javascripts"
  task compile: :environment do
    FileList["app/assets/javascripts/**/*.coffee"].each do |file|
      js_file = file.ext("js").gsub(/js\.js/, ".js")
      File.open(js_file, "w") { |f| f.puts CoffeeScript.compile(File.read(file)) }
    end
  end
end