# YAML Includes

Adds support for the YAML include directive as defined by the [RAML spec].

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'yaml-includes'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install yaml-includes

## Usage

Once required, simply use the YAML.load_file as normal.
Only load_file is supported because include paths may be relative, therefore we
need a file path as a starting point.

## YAML include directive

Take the external YAML file:

``` yaml
#properties.yaml

propertyA: valueA
propertyB: valueB
```

It can be included using the `!include` directive:

``` yaml
#main.yaml

name: example
properties: !include properties.yaml
```

Resulting in the structure

``` yaml
name: example
properties:
  propertyA: valueA
  propertyB: valueB
```

## How does it work?
It works by overloading the parse method to check the file for include
directives, loading any include files as strings and replacing the directive
with the included content.

## Contributing

1. [Fork it]!
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Run test with `$ rspec` or run `$ guard` for automatic testing.
4. Commit your changes (`git commit -am 'Add some feature'`)
5. Push to the branch (`git push origin my-new-feature`)
6. Create a new Pull Request

[RAML Spec]:http://raml.org/spec.html
[Fork it]:https://github.com/codeindulgence/yaml-includes/fork
