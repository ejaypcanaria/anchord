# Anchord

The geekiest way to print guitar chords. Simple and just works.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'anchord'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install anchord

## Usage

1. Include Anchord in your ruby file: `require 'anchord'`
2. Use `Anchord.play [chord_symbol]` to play a chord: `Anchord.play :G`

### Usage on IRB
1. Include Anchord upon running IRB: `irb -Ilib -r anchord`
2. Use `Anchord.play [chord_symbol]` to play a chord: `Anchord.play :G`

## Contributing

1. Fork it ( https://github.com/ejaypcanaria/anchord/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

### Adding additional chords to the library

1. Create a file that ends with `_chords.rb` and put it under `lib/achord/chords` directory.
2. Add a chord using the following DSL:

```
add_chord do
	name 			"chord name"
	coordinate 		[1,2,3,4,5,6] # Finger position with the following string format: E A D G B e
end
```