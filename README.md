# SaneTitle

[![Gem Version](https://badge.fury.io/rb/sanetitle.svg)](https://badge.fury.io/rb/sanetitle)

This gem generates a sane hyfen-separated text to serve as URL address to a page, based on a given string. It is ideal to generate a URL based on a title of a blog post or article, thus the name of the gem.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'sanetitle'
```

And then execute:

```bash
    $ bundle
```

Or install it yourself as:

```bash
    $ gem install sanetitle
```

## Usage

The usage is quite simple. 

Just create a SaneTitle::Sanitize object, passing the string you want to make sane, like:

```ruby
    obj = SaneTitle::Sanifier.new("Este é um exemplo de string que será corrigida no curso da programação")
```

and then store the sane string in a variable with

```ruby
    sane_title = obj.result
```

In this particular case, the variable sane_title shall contain "este-e-um-exemplo-de-string-que-sera-corrigida-no-curso-da-programacao".

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at [the gem gitHub page](https://github.com/EdDeAlmeidaJr/sanetitle). This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Code of Conduct](https://github.com/EdDeAlmeidaJr/sanetitle/blob/master/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

