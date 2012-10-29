# Introduction

A port of the [spine.infinite](https://github.com/maccman/spine.infinite) Rails app to Padrino + Mongomapper.

# Usage
    bundle install
    bundle exec padrino rake seed

    bundle exec padrino s

    open http://localhost:3000

## Notes

If you decide to copy/paste code snippets from this App you'll need to the following Gems + forks to your bundle file.

```ruby
  gem 'padrino-sprockets',     :git => 'git://github.com/bookworm/padrino-sprockets.git'     
  gem 'padrino-assethelpers',  :git => 'git://github.com/bookworm/padrino-assethelpers.git'             
  gem 'padrino-responders',    :git => 'git://github.com/bookworm/padrino-responders.git'    
```