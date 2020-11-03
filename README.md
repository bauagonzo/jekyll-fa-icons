# Jekyll Font Awesome Icons

This Jekyll pluging provides a tag that takes a [Font Awesome](https://fontawesome.com/)<i class="fab fa-font-awesome"></i> code and puts the according `<i>` tag.

It has been implemented to ease my life in decorating http://storage-chaos.io/

## Installation

Add this line to your Gemfile:

```ruby
group :jekyll_plugins do
  gem "jekyll-fa-icons"
end
```

And then execute:

    $ bundle

Alternatively install the gem yourself as:

    $ gem install jekyll-fa-icons

and put this in your ``_config.yml`` 

```yaml
plugins: [jekyll-fa-icons]
 # This will require each of these gems automatically.
```

## Usage

* `{% fai %}` ; will display `<i class="fab fa-github"></i>`
* `{% fai k8s %}` or any other shortcut from `DEFAULT_ICONS` ; will display `<i class="fas fa-dharmachakra"</i>` or the related icon
* `{% fai fab fa-500px %}` or any other code from https://fontawesome.com/icons?d=gallery ; will display `<i class="fab fa-500px"></i>` or the refered code