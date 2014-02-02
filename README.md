# FontLeague

FontLeague collects the fonts of [The League of Moveable Type](https://www.theleagueofmoveabletype.com/) and compiles them into an easy to use ruby gem. With SASS, SCSS and Sprockets support, FontLeague is ready for integration into the asset pipeline of any rails application.

Very special thanks to the very talented people at [The League of Moveable Type](https://www.theleagueofmoveabletype.com/) for doing what they do.

![https://www.theleagueofmoveabletype.com/](https://www.theleagueofmoveabletype.com/images/logo-tiny-text.png)

## Installation

Add this line to your application's Gemfile:

    gem 'font_league'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install font_league

## Usage

In your `application.css`, include the css file:

    ```css
    /*
     *= require font-league
     */
    ```

Then restart your web server if it was previously running.

## Fonts

### Ostrich Sans

![Ostrich Sans](https://github.com/theleagueof/ostrich-sans/raw/master/images/ostrich-sans-1.jpeg)

    font-family: 'Ostrich Sans';
    font-family: 'Ostrich Sans Dashed';
    font-family: 'Ostrich Sans Rounded';
    font-family: 'Ostrich Sans Inline';
    font-family: 'Ostrich Sans Inline';

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
