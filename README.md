# Middleman-IEPAB extension

middleman-iepab is an extension for the [Middleman] static site generator that invokes external pipeline after building.

## Installation

If you're just getting started, install the `middleman` gem and generate a new
project:

```
gem install middleman
middleman init MY_PROJECT --template=blog
```

If you already have a Middleman project: Add `gem "middleman-iepab"` to your
`Gemfile` and run `bundle install`

## Configuration

Within the config.rb of the middleman project, include the line

```
activate :iepab, {
  name: :echo,
  command: "echo hello",
  source: "./source",
  latency: 1
}
```

This syntax and function is same to an external pipeline, but iepab invokes the target external pipeline **after building**, not before building like the original external pipeline. 

## License

Copyright (c) 2017 Susumu Yamazaki. MIT Licensed, see [LICENSE] for details.


[middleman]: http://middlemanapp.com
[LICENSE]: https://github.com/zacky1972/middleman-iepab/blob/master/LICENSE.md
