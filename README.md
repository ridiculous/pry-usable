# Pry meets Usable

This gem joins usable and pry together, and automatically adds some methods to your console.

The main interface is the `conf` method, which is basically an open struct backed by a file. It's used to store
commonly accessed records, resources and other values across console sessions.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'pry-usable'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install pry-usable

## Usage

You're ready to go! Time to set some values from the console. Open up your rails console (or if you don't have
a rails app, you can use `bin/console` from this app instead, as an example):
```ruby
conf.me = "Ryan"
```

Then close the console, and reopen it. Now it can be accessed via `me` for short, and is set to your value:
```ruby
me
```

The methods are defined on the top level binding, and should be available throughout your session.

Use `conf` to set them. Then afterwards, you don't need to reference `conf` anymore.

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/pry-usable. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/pry-usable/blob/master/CODE_OF_CONDUCT.md).

## Code of Conduct

Everyone interacting in the Pry::Usable project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/pry-usable/blob/master/CODE_OF_CONDUCT.md).
