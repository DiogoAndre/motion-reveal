unless defined?(Motion::Project::Config)
  raise "This file must be required within a RubyMotion project Rakefile."
end

# def create_launcher(files)
#   # --- based on motion-testflight
#   launcher_code = <<EOF
# # created by motion-sparkinspector
#   if Object.const_defined?('SparkInspector')
#     SparkInspector.enableObservation
#   end
# EOF

#   launcher_file = './app/sparkinspector_launcher.rb'
#   if !File.exist?(launcher_file) or File.read(launcher_file) != launcher_code
#     File.open(launcher_file, 'w') { |io| io.write(launcher_code) }
#   end
#   files = files.flatten
#   files << launcher_file unless files.find { |x| File.expand_path(x) == File.expand_path(launcher_file) }

# end

Motion::Project::App.setup do |app|
  app.development do
    if File.exist? ('/Applications/Reveal.app')
      app.vendor_project('/Applications/Reveal.app/Contents/SharedSupport/iOS-Libraries/Reveal.framework', :static, :products => ['Reveal'], :cflags => '-ObjC')
      app.frameworks << 'CFNetwork'
      app.frameworks << 'QuartzCore'

    else
      puts "[warning] Reveal.app not found - Download beta from http://www.revealapp.com"
    end
  end
end
