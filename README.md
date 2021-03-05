# Fibc

Returns the n-th integer value in the Fibonacci Sequence, see discuss at [ruby-china](https://ruby-china.org/topics/40862).


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'fibc'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install fibc

## Usage

Run the irb

```ruby
require 'fibc'
measure
Fibc.fib_pure(4)  # processing time: 0.000034s
Fibc.fib(4)       # processing time: 0.000030s
Fibc.fib_pure(40) # processing time: 15.568888s
Fibc.fib(40)      # processing time: 0.511246s
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/Eric-Guo/fibc.
