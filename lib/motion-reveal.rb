unless defined?(Motion::Project::Config)
  raise "This file must be required within a RubyMotion project Rakefile."
end

Motion::Project::App.setup do |app|
  app.development do
    if File.exist? ('/Applications/Reveal.app')
      # Fixes build issues with Reveal 1.5
      app.libs += ['/usr/lib/libz.dylib', '/usr/lib/libc++.dylib']
      if File.exist?('/Applications/Reveal.app/Contents/SharedSupport/iOS-Libraries/RevealServer.framework') #Reveal 2.0
        app.embedded_frameworks += ['/Applications/Reveal.app/Contents/SharedSupport/iOS-Libraries/RevealServer.framework']
      else
        app.vendor_project('/Applications/Reveal.app/Contents/SharedSupport/iOS-Libraries/Reveal.framework', :static, :products => ['Reveal'], :cflags => '-ObjC')
      end
      app.frameworks << 'CFNetwork'
      app.frameworks << 'QuartzCore'

    else
      puts "[warning] Reveal.app not found - Download beta from http://www.revealapp.com"
    end
  end
end
