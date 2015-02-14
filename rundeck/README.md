# Rundeck Test

## Rundeck version

- `2.4.2-1-GA`

## Installation

```
bundle install --path vendor/bundle
bundle exec berks vendor cookbooks
```

```
vagrant plugin install vagrant-vbguest
vagrant plugin install vagrant-omnibus
vagrant up
vagrant provision
```

## Open Rundeck

open `http://localhost:4440` in your browser
