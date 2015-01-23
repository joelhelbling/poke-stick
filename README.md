# Poke::Stick

A command-line client for the Poke message transport server.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'poke-stick'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install poke-stick

## Usage

A command-line client for the Poke message transport server.  Performs a
GET request using the target URI, unless a --file is supplied, in which
case a POST request is made using the contents of the supplied file.
The mimetype is determined from the file's extension, but this can be
overridden (see options below).

    $ stick localhost:9995/foo

    $ stick localhost:9995/foo foo.xml

## Contributing

1. Fork it ( https://github.com/joelhelbling/poke-stick/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
