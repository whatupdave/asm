# Assembly

## Dependencies

* [foreman](https://toolbelt.heroku.com)
* [ruby](http://www.ruby-lang.org)
* [PostgreSQL](http://www.postgresql.org)
* [bundler](http://gembundler.com)

## Setup

    $ git submodule init && git submodule update
    $ bundle install
    $ cp .env.sample .env && $EDITOR .env
    $ foreman start
