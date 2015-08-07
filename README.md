To reproduce the warning:

```ruby
gem install bundler
bundle
rake db:create
bundle exec rspec
```
