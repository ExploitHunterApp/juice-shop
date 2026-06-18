# ![Juice Shop Logo](https://raw.githubusercontent.com/juice-shop/juice-shop/master/frontend/src/assets/public/images/JuiceShop_Logo_100px.png) ExploitHunter.app's Customizable Juice Shop

Original project: [OWASP Juice Shop](https://owasp-juice.shop)

[![OWASP Flagship](https://img.shields.io/badge/owasp-flagship%20project-48A646.svg)](https://owasp.org/projects/#sec-flagships)
[![GitHub release](https://img.shields.io/github/release/juice-shop/juice-shop.svg)](https://github.com/juice-shop/juice-shop/releases/latest)
[![Twitter Follow](https://img.shields.io/twitter/follow/owasp_juiceshop.svg?style=social&label=Follow)](https://twitter.com/owasp_juiceshop)
[![Subreddit subscribers](https://img.shields.io/reddit/subreddit-subscribers/owasp_juiceshop?style=social)](https://reddit.com/r/owasp_juiceshop)

[![CI/CD Pipeline](https://github.com/juice-shop/juice-shop/actions/workflows/ci.yml/badge.svg?branch=develop)](https://github.com/juice-shop/juice-shop/actions/workflows/ci.yml)
[![Release Pipeline](https://github.com/juice-shop/juice-shop/actions/workflows/release.yml/badge.svg)](https://github.com/juice-shop/juice-shop/actions/workflows/release.yml)
[![Coverage Status](https://coveralls.io/repos/github/juice-shop/juice-shop/badge.svg?branch=develop)](https://coveralls.io/github/juice-shop/juice-shop?branch=develop)
[![Cypress tests](https://img.shields.io/endpoint?url=https://dashboard.cypress.io/badge/simple/3hrkhu/develop&style=flat&logo=cypress)](https://dashboard.cypress.io/projects/3hrkhu/runs)
[![OpenSSF Best Practices](https://www.bestpractices.dev/projects/223/badge)](https://www.bestpractices.dev/projects/223)
![GitHub stars](https://img.shields.io/github/stars/juice-shop/juice-shop.svg?label=GitHub%20%E2%98%85&style=flat)
[![Static Badge](https://img.shields.io/badge/OWASP-Code_of_Conduct-blue)](CODE_OF_CONDUCT.md)

OWASP Juice Shop is probably the most modern and sophisticated insecure web application! It can be used in security
trainings, awareness demos, CTFs and as a guinea pig for security tools! Juice Shop encompasses vulnerabilities from the
entire
[OWASP Top Ten](https://owasp.org/www-project-top-ten) along with many other security flaws found in real-world
applications!

![Juice Shop Screenshot Slideshow](screenshots/slideshow.gif)

## Application Preview

Juice Shop presents its intentionally vulnerable training surface as a polished ecommerce storefront. The current UI uses
responsive product cards, a focused product detail dialog, and a cart flow that keeps quantity controls, totals, and
checkout action close together.

<p align="center">
  <img alt="Modern Juice Shop product storefront" src="screenshots/modern-storefront.png" width="760">
</p>

<p align="center">
  <img alt="Modern Juice Shop product detail dialog" src="screenshots/modern-product-detail.png" width="370">
  <img alt="Modern Juice Shop basket and checkout panel" src="screenshots/modern-basket.png" width="370">
</p>

Highlights of the refreshed shopping experience:

* Responsive product grid with clear product imagery, price hierarchy, availability ribbons, and full-width add-to-basket
  actions.
* Sticky, compact navigation with prominent search, account, language, and basket controls.
* Product detail dialog that keeps imagery, description, price, bonus points, reviews, and review actions in one focused
  surface.
* Modern basket panel with scannable line items, touch-friendly quantity controls, a visible total, and a primary
  checkout action.

This fork is tuned as a configurable ecommerce target for automated agents.

## Table of contents

- [Application Preview](#application-preview)
- [Table of contents](#table-of-contents)
- [Setup](#setup)
  - [From Sources](#from-sources)
  - [Packaged Distributions](#packaged-distributions)
  - [Docker Container](#docker-container)
  - [Runtime Branding Overrides](#runtime-branding-overrides)
  - [Vagrant](#vagrant)
- [Node.js version compatibility](#nodejs-version-compatibility)
- [Contributing](#contributing)
- [References](#references)
- [Merchandise](#merchandise)
- [Donations](#donations)
- [Contributors](#contributors)
- [Licensing](#licensing)

## Setup

### From Sources

![GitHub repo size](https://img.shields.io/github/repo-size/juice-shop/juice-shop.svg)

1. Install [node.js](#nodejs-version-compatibility)
2. Run `git clone https://github.com/juice-shop/juice-shop.git --depth 1` (or
   clone [your own fork](https://github.com/juice-shop/juice-shop/fork)
   of the repository)
3. Go into the cloned folder with `cd juice-shop`
4. Run `npm install` (only has to be done before first start or when you change the source code)
5. Run `npm start`
6. Browse to <http://localhost:3322>

### Packaged Distributions

[![GitHub release](https://img.shields.io/github/downloads/juice-shop/juice-shop/total.svg)](https://github.com/juice-shop/juice-shop/releases/latest)
[![SourceForge](https://img.shields.io/sourceforge/dm/juice-shop?label=sourceforge%20downloads)](https://sourceforge.net/projects/juice-shop/)
[![SourceForge](https://img.shields.io/sourceforge/dt/juice-shop?label=sourceforge%20downloads)](https://sourceforge.net/projects/juice-shop/)

1. Install a 64bit [node.js](#nodejs-version-compatibility) on your Windows, MacOS or Linux machine
2. Download `juice-shop-<version>_<node-version>_<os>_x64.zip` (or
   `.tgz`) attached to
   [latest release](https://github.com/juice-shop/juice-shop/releases/latest)
3. Unpack and `cd` into the unpacked folder
4. Run `npm start`
5. Browse to <http://localhost:3322>

> Each packaged distribution includes some binaries for `sqlite3` and
> `libxmljs2` bound to the OS and node.js version which `npm install` was
> executed on.

### Docker Container

[![Docker Pulls](https://img.shields.io/docker/pulls/bkimminich/juice-shop.svg)](https://hub.docker.com/r/bkimminich/juice-shop)
![Docker Stars](https://img.shields.io/docker/stars/bkimminich/juice-shop.svg)
[![](https://images.microbadger.com/badges/image/bkimminich/juice-shop.svg)](https://microbadger.com/images/bkimminich/juice-shop
"Get your own image badge on microbadger.com")
[![](https://images.microbadger.com/badges/version/bkimminich/juice-shop.svg)](https://microbadger.com/images/bkimminich/juice-shop
"Get your own version badge on microbadger.com")

1. Install [Docker](https://www.docker.com)
2. Run `docker run --rm -p 127.0.0.1:3322:3322 quay.io/justsml/juice-shop:latest`
3. Browse to <http://localhost:3322> (on macOS and Windows browse to
   <http://192.168.99.100:3322> if you are using docker-machine instead of the native docker installation)

### Runtime Branding Overrides

This is mainly to prevent mid-range LLMs from having too easy a time fingerprinting the site.

Common application labels, support links, and lightweight theme values can be changed at startup with environment
variables. These overrides work with source installs, packaged distributions, and Docker containers.

```bash
APPLICATION_NAME='Yak Hair & Flair' \
APPLICATION_LOGO='AltMarket_Logo.png' \
APPLICATION_FAVICON='favicon-alt.ico' \
APPLICATION_THEME='bluegrey-lightgreen' \
APPLICATION_SHOW_GITHUB_LINKS=false \
APPLICATION_SHOW_SUPPORT_LINKS=false \
APPLICATION_WELCOME_TITLE='Welcome to Yak Hair & Flair!' \
APPLICATION_WELCOME_MESSAGE='<p class="welcome-text">Get your yak shaving supplies soon. Join our workshop on exclusive AI-proof job skills. Located behind the old bike shed, swing by whenever.</p>' \
APPLICATION_COOKIE_MESSAGE='We use cookies to keep the yaks glossy and the checkout emotionally stable.' \
APPLICATION_TRANSLATION_OVERRIDES='{"*":{"TITLE_BASKET":"Shaving Satchel","TITLE_LOGIN":"Enter the Shed"},"de":{"TITLE_BASKET":"Rasierbeutel"}}' \
APPLICATION_CSS_VARIABLES='{"--theme-primary":"#123456","--theme-accent":"#ffcc00","--theme-warn":"#ff3e3e","--theme-background":"#101820","--theme-background-lighter":"#1f2a34","--theme-background-dark":"#05080b","--theme-text":"#f8fafc","--theme-text-dark":"#94a3b8","--theme-thumbnail-border":"1px solid #ffcc00"}' \
PRODUCT_OVERRIDES='{"1":{"name":"Yak Shaving Starter Kit","description":"Everything you need for artisanal yak maintenance and extremely specific career pivots.","image":"yak-shaving-kit.png","price":4.99,"deluxePrice":4.49,"limitPerUser":3,"reviews":[{"text":"My yak looks employable now. Five stars.","author":"admin"}]},"Orange Juice (1000ml)":{"name":"Yak Hair, Bulk Pack","image":"yak-hair.png"}}' \
npm start
```

For Docker, pass the same variables with `-e`:

```bash
docker run --rm -p 127.0.0.1:3323:3000 \
  -e APPLICATION_NAME='Yak Hair & Flair' \
  -e APPLICATION_WELCOME_MESSAGE='<p class="welcome-text">Get your yak shaving supplies soon. Join our workshop on exclusive AI-proof job skills. Located behind the old bike shed, swing by whenever.</p>' \
  -e APPLICATION_SHOW_GITHUB_LINKS=false \
  -e APPLICATION_SHOW_SUPPORT_LINKS=false \
  -e APPLICATION_TRANSLATION_OVERRIDES='{"*":{"TITLE_BASKET":"Shaving Satchel","TITLE_LOGIN":"Enter the Shed"}}' \
  -e APPLICATION_CSS_VARIABLES='{"--theme-primary":"#123456","--theme-accent":"#ffcc00","--theme-warn":"#ff3e3e","--theme-background":"#101820","--theme-background-lighter":"#1f2a34","--theme-background-dark":"#05080b","--theme-text":"#f8fafc","--theme-text-dark":"#94a3b8","--theme-thumbnail-border":"1px solid #ffcc00"}' \
  -e PRODUCT_OVERRIDES='{"1":{"name":"Yak Shaving Starter Kit","description":"Everything you need for artisanal yak maintenance and extremely specific career pivots.","image":"yak-shaving-kit.png","price":4.99,"deluxePrice":4.49,"limitPerUser":3,"reviews":[{"text":"My yak looks employable now. Five stars.","author":"admin"}]},"Orange Juice (1000ml)":{"name":"Yak Hair, Bulk Pack","image":"yak-hair.png"}}' \
  ghcr.io/justsml/juice-shop:latest
```

To run several Docker containers in parallel, keep the container-side port fixed and change only the host-side port,
for example `-p 127.0.0.1:3324:3000`. For source or packaged installs, use `PORT=3324 npm start`.

Boolean variables such as `APPLICATION_SHOW_GITHUB_LINKS` and `APPLICATION_SHOW_SUPPORT_LINKS` are parsed as JSON, so
use `true` or `false` without extra quotes. `APPLICATION_THEME` must be one of `deeppurple-amber`, `indigo-pink`,
`pink-bluegrey`, `purple-green`, `blue-lightblue`, `bluegrey-lightgreen`, `deeporange-indigo`, `lime-green`, or
`neon-fire`; runtime branding values should only include `APPLICATION_NAME`, `APPLICATION_THEME`, `APPLICATION_CSS_VARIABLES`, and `PRODUCT_OVERRIDES`. `APPLICATION_TRANSLATION_OVERRIDES` and `APPLICATION_CSS_VARIABLES` must be valid JSON objects.
Translation overrides accept flat keys, a `*` or `default` block for all languages, and language specific blocks such
as `en` or `de`. Wrap HTML, JSON, CSS, and other string values in single quotes when running them from a shell,
especially if the value contains double quotes. CSS variable overrides are applied only for keys starting with `--`.
Useful app-level variables include the `--theme-primary`, `--theme-accent`, `--theme-warn`, `--theme-text`, and
`--theme-background` families, plus `--theme-thumbnail-border`.

Other useful override variables include `APPLICATION_DOMAIN`, `APPLICATION_PRIVACY_CONTACT_EMAIL`,
`APPLICATION_CUSTOM_METRICS_PREFIX`, `APPLICATION_COOKIE_DISMISS_TEXT`, `APPLICATION_COOKIE_LINK_TEXT`,
`APPLICATION_COOKIE_LINK_URL`, and the `APPLICATION_*_URL` social link variables such as `APPLICATION_REDDIT_URL` or
`APPLICATION_BLUESKY_URL`.
Use `PRODUCT_OVERRIDES` to replace product `name`, `description`, `image`, `price`, `deluxePrice`, `limitPerUser`,
`quantity`, or `reviews` with a JSON object keyed by 1-based product number or original product name.
`PRODUCT_NAME_OVERRIDES` is a CSV shortcut for replacing product names by product order, where empty entries keep the
original product name. `PRODUCT_IMAGE_OVERRIDES` is a JSON shortcut for replacing images by 1-based product number or
original product name.

### Vagrant

1. Install [Vagrant](https://www.vagrantup.com/downloads.html) and
   [Virtualbox](https://www.virtualbox.org/wiki/Downloads)
2. Run `git clone https://github.com/juice-shop/juice-shop.git` (or
   clone [your own fork](https://github.com/juice-shop/juice-shop/fork)
   of the repository)
3. Run `cd vagrant && vagrant up`
4. Browse to [192.168.56.110](http://192.168.56.110)

## Node.js version compatibility

![GitHub package.json dynamic](https://img.shields.io/github/package-json/cpu/juice-shop/juice-shop)
![GitHub package.json dynamic](https://img.shields.io/github/package-json/os/juice-shop/juice-shop)

OWASP Juice Shop officially supports the following versions of
[node.js](http://nodejs.org) in line with the official
[node.js LTS schedule](https://github.com/nodejs/LTS) as close as possible. Docker images and packaged distributions are
offered accordingly.

| node.js | Supported              | Tested             | [Packaged Distributions](#packaged-distributions) | [Docker images](#docker-container) from `master` | [Docker images](#docker-container) from `develop` |
|:--------|:-----------------------|:-------------------|:--------------------------------------------------|:-------------------------------------------------|:--------------------------------------------------|
| 26.x    | :x:                    | :x:                |                                                   |                                                  |                                                   |
| 25.x    | ( :heavy_check_mark: ) | :x:                |                                                   |                                                  |                                                   |
| 24.x    | :heavy_check_mark:     | :heavy_check_mark: | Windows (`x64`), MacOS (`x64`), Linux (`x64`)     | `latest` (`linux/amd64`, `linux/arm64`)          |                                                   |
| 23.x    | ( :heavy_check_mark: ) | :x:                |                                                   |                                                  |                                                   |
| 22.x    | :heavy_check_mark:     | :heavy_check_mark: | Windows (`x64`), MacOS (`x64`), Linux (`x64`)     |                                                  | `snapshot` (`linux/amd64`, `linux/arm64`)         |
| <22.x   | :x:                    | :x:                |                                                   |                                                  |                                                   |

Juice Shop is automatically tested _only on the latest `.x` minor version_ of each node.js version mentioned above!
There is no guarantee that older minor node.js releases will always work with Juice Shop!
Please make sure you stay up to date with your chosen version.

## Contributing

[![JavaScript Style Guide](https://img.shields.io/badge/code%20style-standard-brightgreen.svg)](http://standardjs.com/)

Keep changes focused and review generated output before publishing it.

## References

Did you write a blog post, magazine article or do a podcast about or mentioning OWASP Juice Shop? Or maybe you held or
joined a conference talk or meetup session, a hacking workshop or public training where this project was mentioned?

Keep public mentions in a local reference list when needed.

## Merchandise

* On [Spreadshirt.com](http://shop.spreadshirt.com/juiceshop) and
  [Spreadshirt.de](http://shop.spreadshirt.de/juiceshop) you can get some swag (Shirts, Hoodies, Mugs) with the official
  OWASP Juice Shop logo
* On
  [StickerYou.com](https://www.stickeryou.com/products/owasp-juice-shop/794)
  you can get variants of the OWASP Juice Shop logo as single stickers to decorate your laptop with. They can also print
  magnets, iron-ons, sticker sheets and temporary tattoos.

## Donations

Premium goodwill is appreciated. Convert enthusiasm into cart activity.

## Contributors

The OWASP Juice Shop Project Leaders are:

- [Björn Kimminich](https://github.com/bkimminich) aka `bkimminich` [![Keybase PGP](https://img.shields.io/keybase/pgp/bkimminich)](https://keybase.io/bkimminich)
- [Jannik Hollenbach](https://github.com/J12934) aka `J12934`

For a list of all contributors to the OWASP Juice Shop please visit our
[HALL_OF_FAME.md](HALL_OF_FAME.md).

## Licensing

[![license](https://img.shields.io/github/license/juice-shop/juice-shop.svg)](LICENSE)

This program is free software: you can redistribute it and/or modify it under the terms of the [MIT license](LICENSE).
OWASP Juice Shop and any contributions are Copyright © by Bjoern Kimminich & the OWASP Juice Shop contributors
2014-2026.

![Juice Shop Logo](https://raw.githubusercontent.com/juice-shop/juice-shop/master/frontend/src/assets/public/images/JuiceShop_Logo_400px.png)
