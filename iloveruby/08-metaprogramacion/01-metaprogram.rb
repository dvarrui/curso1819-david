#!/usr/bin/env ruby

class Person
  def initialize(name)
    @name = name
  end
end

quigon = Person.new("Qui-gon Jinn")

puts '='*60
puts "Object             : #{quigon}"
puts "Instance variables : #{quigon.instance_variables}"
puts "Method with name   : #{quigon.public_methods.grep(/name/)}"
puts "Object#name        : undefined method 'name'"
puts '='*60
