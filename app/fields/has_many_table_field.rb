require "administrate/field/base"

class HasManyTableField < Administrate::Field::Base
  def to_s
    data
    puts '==========================='
    e = data.to_ary
    puts e
    puts '============================'
  end

  def build
     
    @lignes = data.all
     
  end
  
end
