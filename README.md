#motion-reveal

Use [Reveal](http://www.revealapp.com) with [RubyMotion](http://www.rubymotion.com) apps.

This is a very simple gem. Check the [lib/motion-reveal.rb](https://github.com/DiogoAndre/motion-reveal/blob/master/lib/motion-reveal.rb) source and see it for yourself.

##usage

[Download Reveal](http://www.revealapp.com) and move it to your applications folder (/Applications)

### With Bundler

1. Add motion-reveal gem to your Gemfile
```ruby
gem 'motion-reveal'
```
    
2. ```$ bundle install```

### Without Bundler

  1. install the motion-reveal gem  
    ```$ gem install motion-reveal```
  2. add to your RubyMotion app Rakefile:
  
    ```ruby
    require 'rubygems'
    require 'motion-reveal'
    ```

### Cocoapods

There is also [Cocoapod spec](http://cocoadocs.org/docsets/Reveal-iOS-SDK/) for using Reveal. You can integrate Cocoapods into your Rubymotion project using the excelent [motion-cocoapod](http://github.com/HipByte/motion-cocoapods) gem.
 
### Have Fun!  

##thanks
* [@TBD](https://github.com/TBD/) - gem idea and boilerplate code
