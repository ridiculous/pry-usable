# frozen_string_literal: true

require "pry"
require "usable"
require "usable/persistence"
require_relative "version"
Pry.config.hooks.add_hook(:before_session, :pry_usable_conf) { require_relative 'conf' }
