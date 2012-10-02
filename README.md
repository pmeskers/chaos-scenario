# Chaos Scenario

A random scenario generator. (Work in progress).

## Installation

```sh
$ gem install chaos_scenario
```

...or in your Gemfile:

```txt
require 'chaos_scenario'
```

## Usage

Generate nonsense plots such as:

```
The Inquisitor, a vampire, seeking peace of mind inside the seedy underbelly of the South.
```

```ruby
ChaosScenario.ensue!
```

or use `ensue` to execute silently and return the string instead of outputting it.
