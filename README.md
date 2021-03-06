# Alpine Lab website and blog

[![Codeship Status for alpinelab/website](https://app.codeship.com/projects/908e9730-e4cb-0136-bf47-3242880462ae/status?branch=master)](https://app.codeship.com/projects/319122)

This is the source code only.

For the compiled, static, hosted on [github:pages](https://pages.github.com) site, see the [gh-pages branch](https://github.com/alpinelab/website/tree/gh-pages).

The website/blog itself is available at [www.alpine-lab.com](https://www.alpine-lab.com).

Powered by [Middleman](https://middlemanapp.com) in our [Docker image for Ruby development](https://github.com/alpinelab/docker-ruby-dev).
Precompiles [Haml](https://haml.info), [Sass](https://sass-lang.com), [CoffeeScript](https://coffeescript.org/) and [Markdown](https://daringfireball.net/projects/markdown/).

> Run `docker-sync start` once prior to any other command if you're on Macintosh 🍎

## Setup

To configure [LocaleApp](https://www.localeapp.com), type the following command:

```shell
docker-compose run app localeapp install --standalone --write-env-file <APIKEY>
```

## Run

To run the development server, run:

```shell
docker-compose up
```

Update localized content from [LocaleApp](https://www.localeapp.com) using:

```shell
docker-compose run app localeapp pull
```

## Deploy

Although deployment is done automatically from Codeship for every commit pushed
to `master`, you can also publish manually from your computer:

```shell
docker-compose run -v ~/.ssh:/etc/skel/.ssh -v ~/.gitconfig:/etc/skel/.gitconfig app ./deploy.sh
```

## Wanna join us?

Simply create a PR here that adds you as a team member!

#### License

Written by [Michael Baudino](https://github.com/michaelbaudino) and [Sylvain Fertons](https://github.com/Spharian) for [Alpine Lab](https://www.alpine-lab.com), 2013.
Licensed under the terms of the MIT license (see `LICENSE.md` file).
