class Penguin
  attr_accessor :name
  attr_accessor :description

  def initialize(name:, description:)
    @name = name
    @description = description
  end

  def inventory_text
    "Penguin #{name} #{description.downcase}"
  end
end 

class Alligator
  attr_accessor :name
  attr_accessor :description

  def initialize(name:, description:)
    @name = name
    @description = description
  end

  def inventory_text
    "Alligator #{name} #{description.downcase}"
  end
end

class Lemur
  attr_accessor :name
  attr_accessor :kind
  attr_accessor :description

  def initialize(name:, kind:, description:)
    @name = name
    @description = description
    @kind = kind
  end

  def inventory_text
    "Lemur (kind: #{kind}) #{name} - #{description.downcase}"
  end
end

class Otter
  attr_accessor :name
  attr_accessor :description

  def initialize(name:, description:)
    @name = name
    @description = description
  end

  def inventory_text
    "Otter #{name} #{description.downcase}"
  end

end 

class Gorilla
  attr_accessor :name
  attr_accessor :origin
  attr_accessor :description

  def initialize(name:, origin:, description:)
    @name = name
    @description = description
    @origin = origin
  end

  def inventory_text
    description[0] = description[0].downcase
    "Gorilla #{name} from #{origin} #{description}"
  end
end

class AnimalFactory
  
  TYPES = {
    penguin: Penguin,
    alligator: Alligator,
    lemur: Lemur,
    otter: Otter,
    gorilla: Gorilla
  }

  def self.for(type, attributes)
    (TYPES[type] || Animal).new(attributes)
  end
end
