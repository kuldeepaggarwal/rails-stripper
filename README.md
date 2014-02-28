Stripper::Rails [![Code Climate](https://codeclimate.com/github/kuldeepaggarwal/stripper-rails.png)](https://codeclimate.com/github/kuldeepaggarwal/stripper-rails) [![Build Status](https://travis-ci.org/kuldeepaggarwal/stripper-rails.png?branch=master)](https://travis-ci.org/kuldeepaggarwal/stripper-rails)
-------

An utility which provides a class method `strip_fields`. It accepts list of fields and removes leading and trailing whitespaces before validation.

Installation
-------

Add this line to your application's Gemfile:

```shell
gem 'stripper-rails', '~> 0.0.1'
```

And then execute:

```shell
$ bundle
```

Or install it yourself as:

```shell
$ gem install stripper-rails
```

Usage
-------

For _ActiveRecord:_

```ruby
class User < ActiveRecord::Base

  strip_fields :first_name
end
```

For _Mongoid:_

```ruby
class Article
  include Mongoid::Document

  strip_fields :name
end
```

Testing
-------

```shell
$ bundle
$ bundle exec rspec spec
```

Contributing
-------

```
1. Fork it ( https://github.com/kuldeepaggarwal/stripper-rails/fork ).
2. Create your feature branch (`git checkout -b my-new-feature`).
3. Add test cases and verify all tests are green.
4. Commit your changes (`git commit -am 'Add some feature'`).
5. Push to the branch (`git push origin my-new-feature`).
6. Create new Pull Request.
```
