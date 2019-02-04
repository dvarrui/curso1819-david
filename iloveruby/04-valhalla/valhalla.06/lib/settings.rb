
require 'singleton'

# This Singleton contains global configuracions
class Settings
  include Singleton

  attr_reader   :name, :version

  def initialize
    @name = 'freya'
    @version = '0.6.0'
  end
end
