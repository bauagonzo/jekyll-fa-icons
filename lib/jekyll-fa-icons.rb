# frozen_string_literal: true

require 'jekyll'
require 'jekyll-fa-icons/version'

# TODO :
#  * deal with other tags like color, etc.
#  * make DEFAULT_ICONS configurable from _config.yaml / Jekyll.configuration({})

class FontAwesomeIcons < Liquid::Tag
  DEFAULT_ICONS = { 'gh'    => 'fab fa-brands fa-github',
                    'k8s'   => 'fas fa-solid fa-dharmachakra',
                    'rb'    => 'fas fa-solid fa-gem',
                    'sc'    => 'fa-duotone fa-maximize',
                    'wiki'  => 'fab fa-brands fa-wikipedia-w',
                    'linux' => 'fab fa-brands fa-linux',
                    'rhel'  => 'fa-brands fa-redhat',
                    'dell'  => 'fas fa-laptop-code' }
  def initialize(tagName, input, tokens)
    super
    @input = input
  end

  def render(context)
    icon = ""
    # Github is the most used icon for me
    if @input.nil? || @input.empty?
      icon = DEFAULT_ICONS['gh']
    else
      # Font Awesome codes are always 2 words (e.g <i class="fab fa-500px"></i>)
      # Less means that's one of the shortcut
      if @input.split.length < 2
        icon = DEFAULT_ICONS["#{@input.strip}"] #be sure to remove trailing spaces
      else
        icon = @input
      end
    end
    %(<i class="#{icon}"></i>)
  end
  Liquid::Template.register_tag('fai', self)
end
