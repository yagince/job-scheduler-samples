# Azkaban Test

## Azkaban version

- `azkaban-solo-server-2.6.4`

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

## Open Azkaban

open `http://localhost:8081` in your browser

- id : azkaban
- pass: azkaban



