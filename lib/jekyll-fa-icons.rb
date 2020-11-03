# frozen_string_literal: true

require 'jekyll'
require 'jekyll-fa-icons/version'

# TODO deal with other tags like color, etc.
class FontAwesomeIcons < Liquid::Tag
  DEFAULT_ICONS = { 'gh'    => 'fab fa-github',
                    'k8s'   => 'fas fa-dharmachakra',
                    'rb'    => 'fas fa-gem',
                    'wiki'  => 'fab fa-wikipedia-w',
                    'linux' => 'fab fa-linux',
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
