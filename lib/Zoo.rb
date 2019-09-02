class Zoo

    attr_reader :name, :location #, :nickname, :species, :weight
    attr_accessor :animals

    @@all = []

    def initialize (name, location, animals=[])
        @name = name
        @location = location
        @animals = []
        @@all << self 
    end

    def self.all 
        @@all
    end

    def buy_animal(species, weight, nickname) 
        new_animal = Animal.new(species, weight, nickname, self)
        @animals << new_animal
        new_animal
    end

    def animal_species 
        self.animals.collect { |s| s.species }.uniq
    end

    def find_by_species(species)
        self.animals.select { |s| s.species == species }
    end

    def animal_nicknames
        self.animals.collect { |s| s.nickname }
    end

    def self.find_by_location(local) 
        self.all.select { |l| l.location == local }
    end

end
