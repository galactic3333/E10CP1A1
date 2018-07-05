module Herviboro
  DEFINIR = 'Sólo me alimento de vegetales!'.freeze

  def self.definir
    puts DEFINIR
  end

  def dieta
    puts 'Soy un Herviboro!'
  end
end

class Animal
  def saludar
    puts 'Soy un animal!'
  end
end

class Conejo < Animal
  include Herviboro
  def initialize(name)
    @name = name
  end
end

conejo = Conejo.new('Bugs Bunny')
conejo.saludar
conejo.dieta
Herviboro.definir
