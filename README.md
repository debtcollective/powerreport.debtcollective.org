[![CircleCI](https://circleci.com/gh/debtcollective/powerreport.debtcollective.org.svg?style=svg)](https://circleci.com/gh/debtcollective/powerreport.debtcollective.org)

# The Debt Collective's Power Report

This repository houses [The Debt Collective's](https://debtcollective.org) Jekyll website for the Power Report.

## Development

To set up your environment to develop this theme, run `bundle install`.

To serve the site locally, run `bundle exec jekyll serve` and open your browser at `http://localhost:4000`. This starts a Jekyll server using your theme. You can make modifications to any of the styles, javascript, templates, and markdown and Jekyll will automatically reload them, just make sure to refresh clearing the cache as sometimes that will be stale and you'll get the old content.

One thing to be aware of while developing locally is that SiteLeaf (the visual editor we use to make it easier for the organizers to contribute to the content) will make arbitrary changes to markdown preambles and the `_config.yml` to reorder properties. This is annoying but not preventable. The cost of this is just having to constantly pull master for updates if anyone makes a change through SiteLeaf (and resolving any conflicts in `_config.yml`).

## Deployment

Deployment happens automatically through CircleCI. It takes approximately 10 minutes for CircleCI to build the site and push the changes to S3. After that, you must locally clear your cache (it is set to automatically expire after 15 (?) minutes) for the changes to be reflected right away, otherwise wait for it to expire on its own.

## Usage

### News Analysis

#### Preamble Variables

1.  `layout`: `news-analysis`
1.  `title`: Main title of the DC Power Report article
1.  `strike-title`: Original title of the article, if a commentary
1.  `lifted-from`: Original source of article, if a commentary
1.  `date`: Date written

Supports two special tags:

1.  `<mark>`: Highlights the contents of the tag
2.  `<aside>`: Denotes an aside, used for commentary articles to annotate the original content. Asides can also be denoted using `<(` and `)>` as "custom markdown".

### Note about JS

None of the JavaScript gets transformed by Babel or anything like that, so make sure to not use all the newest features. The site will fully work statically with IE11 (the only thing that will probably break is the video player styling because the library we use explicity does not support IE11). Ensuring this should be a part of the code review process for any JS changes.

## License

The site is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
