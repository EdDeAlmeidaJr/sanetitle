# SaneTitle

[![Gem Version](https://badge.fury.io/rb/sanetitle.svg)](https://badge.fury.io/rb/sanetitle)
[![Build status](https://travis-ci.org/EdDeAlmeidaJr/sanetitle.svg?branch=master)](https://travis-ci.org/EdDeAlmeidaJr/sanetitle.svg?branch=master)
[![Coverage Status](https://coveralls.io/repos/github/EdDeAlmeidaJr/sanetitle/badge.svg?branch=master)](https://coveralls.io/github/EdDeAlmeidaJr/sanetitle?branch=master)
[![Code Climate](https://codeclimate.com/repos/56b8b4bb67fabe0fbc00274f/badges/ff71f9b0b75afbb85416/gpa.svg)](https://codeclimate.com/repos/56b8b4bb67fabe0fbc00274f/feed)
[![Issue Count](https://codeclimate.com/repos/56b8b4bb67fabe0fbc00274f/badges/ff71f9b0b75afbb85416/issue_count.svg)](https://codeclimate.com/repos/56b8b4bb67fabe0fbc00274f/feed)


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

From release 0.2.0 on, one may also call

```ruby
    sane_title = obj.result_imp(<limit>,<html>)
```

where:

<limit> is an integer value used to require that the size of the result string is limited to this size, and
<html> is a boolean value to require (true) or not (false) that the extension .html is appended to the result.

Note two important things:

1) If you use

```ruby
    sane_title = obj.result_imp(20,true)
```

the result string shall have, in fact, a lenght of 25. 20 from the limit you asked, plus five, which is the size of the extension .html. If you want a total of 20 positions you should say

```ruby
    sane_title = obj.result_imp(15,true)
```

## Important advice

This gem makes no assumption about filesystems. Then, if you intend to use the filename obtained here as a name of a file to be written, **please take care of duplicate names before writing**. We won't accept any responsability on data loss.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

If you want to contribute to this project, your help is welcome, for sure. But please, take some note before you start, so you won't tell me you didn't knew these things beforehand:

01) We are here to develop some software, not to discuss politics, race, religion, gender or any other issue the 'politically correct' people like to raise to disguise their inability to make things happen.

02) Opinions given by any developer outside the scope of this project are not our business. We don't care about what what you think, as long as you do NOT bring your opinions to this development space.

03) You may not raise issues about things not related to this project. This includes issues related to other developer's opinions given outside here.

04) Just to summarize all things said before: **Keep your personal stuff far away from this project and discuss only it in this context here**.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

