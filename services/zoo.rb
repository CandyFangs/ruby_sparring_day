require_relative 'animals.rb'

class Zoo
  def initialize
    @zoo = []
  end 
  def add_animals(animals)
    @zoo.push(*animals)
  end

  def inventory
    s = ""
    @zoo.sort! { |a,b| a.name.downcase <=> b.name.downcase }

    ending = ' Hope you will enjoy your visit!'
    animals_descriptions = @zoo.map(&:inventory_text).join(", ")+"."
    beginning = "For now there are only #{@zoo.length} animals here! "
    zoo_size = @zoo.length

    if @zoo.empty?
      s << 'Oh no! There are no animals in our ZOO!'
    elsif zoo_size == 1 
      s << "There is only one animal in our ZOO! #{@zoo[0].inventory_text}.#{ending}"
    elsif zoo_size == 2
      if @zoo[0].class.name == @zoo[1].class.name
        s << "For now there are only #{zoo_size} #{@zoo[0].class.name.downcase}s here! #{@zoo[0].inventory_text} and #{@zoo[1].inventory_text}.#{ending}"
      else
        s << "For now there are only #{zoo_size} animals here! #{@zoo[0].inventory_text} and #{@zoo[1].inventory_text}.#{ending}" 
      end
    elsif zoo_size > 2 && zoo_size <= 4
      s << "For now there are only #{zoo_size} animals here! #{animals_descriptions}#{ending}"
    elsif zoo_size > 4 && zoo_size <= 9
      s << "There are #{zoo_size} animals in our ZOO! #{animals_descriptions}#{ending}"
    elsif zoo_size > 9
      s << "Yayy! We have #{zoo_size} residents now! #{animals_descriptions} You need to visit us as soon as possible!"
    end
    s
  end
end



z = Zoo.new




