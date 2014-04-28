# Ghissues

Github issue registrator with Yaml data file.

## Installation

Create gem file.

    $ rake build


install it yourself as:

    $ gem install pkg/ghissues-x.xx.gem

## Usage

    $ ghissues -f <yaml data file>

## YAML format

required: gh_user, gh_token, gh_repos, title  

optional: times, body, milestone, labels, assignee


## Contributing

1. Fork it ( https://github.com/[my-github-username]/ghissues/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
