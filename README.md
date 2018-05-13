# jekyll-debtcollective

The Debt Collective's Media Page and Power Report Jekyll theme.

## Installation

Add this line to your Jekyll site's `Gemfile`:

```ruby
gem "jekyll-debtcollective"
```

And add this line to your Jekyll site's `_config.yml`:

```yaml
theme: jekyll-debtcollective
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install jekyll-debtcollective

## Usage

### News Analysis

#### Preamble Variables

1. `layout`: `news-analysis`
1. `title`: Main title of the DC Power Report article
2. `strike-title`: Original title of the article, if a commentary
3. `lifted-from`: Original source of article, if a commentary
4. `date`: Date written

Supports two special tags:

1. `<mark>`: Highlights the contents of the tag
2. `<aside>`: Denotes an aside, used for commentary articles to annotate the original content

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/debtcollective/jekyll-debtcollective. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## Development

To set up your environment to develop this theme, run `bundle install`.

Your theme is setup just like a normal Jekyll site! To test your theme, run `bundle exec jekyll serve` and open your browser at `http://localhost:4000`. This starts a Jekyll server using your theme. Add pages, documents, data, etc. like normal to test your theme's contents. As you make modifications to your theme and to your content, your site will regenerate and you should see the changes in the browser after a refresh, just like normal.

When your theme is released, only the files in `_layouts`, `_includes`, `_sass` and `assets` tracked with Git will be bundled.
To add a custom directory to your theme-gem, please edit the regexp in `jekyll-debtcollective.gemspec` accordingly.

## License

The theme is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

