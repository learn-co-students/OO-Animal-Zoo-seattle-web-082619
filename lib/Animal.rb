class Animal
    attr_reader :nickname, :species, :zoo
    attr_accessor :weight

    @@all = []

    def initialize(species, weight, nickname, zoo=nil)
        @species = species 
        @weight = weight 
        @nickname = nickname
        @zoo = zoo
        @@all << self 
    end

    def self.all 
        @@all
    end

    def zoo 
        Zoo.all.select { |z| z.animals }
    end

    def self.find_by_species(species)
        self.all.select { |s| s.species == species }
    end

    def find_me
        Zoo.all.select { |z| z.animals }
    end

end
