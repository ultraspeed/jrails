# The following options can be changed by creating an initializer in config/initializers/jrails.rb

# jRails uses jQuery.noConflict() by default
# to use the default jQuery varibale, use:
# ActionView::Helpers::PrototypeHelper::JQUERY_VAR = '$'

# ActionView::Helpers::PrototypeHelper:: DISABLE_JQUERY_FORGERY_PROTECTION
# Set this to disable forgery protection in ajax calls
# This is handy if you want to use caching with ajax by injecting the forgery token via another means
# for an example, see http://henrik.nyh.se/2008/05/rails-authenticity-token-with-jquery
# ActionView::Helpers::PrototypeHelper::DISABLE_JQUERY_FORGERY_PROTECTION = true

ActionView::Helpers::AssetTagHelper.register_javascript_expansion :jquery => ['jquery.min', 'jquery-ui.min']
ActionView::Helpers::AssetTagHelper.register_javascript_expansion :jrails => ['jrails.min']

require 'jrails'
require 'jquery_selector_assertions' if Rails.env.test?