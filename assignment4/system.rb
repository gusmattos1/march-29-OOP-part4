class System

  @@bodies = []

  def self.bodies
    return @@bodies
  end

  def add
    @@bodies << self
  end

  def self.total_mass
    massa = 0
    @@bodies.each{ |x| massa += x.mass  }
    puts massa
  end
end

# =====================================================

class Body < System

  def initialize(name, mass)
    @name = name
    @mass = mass
  end
end


# =====================================================

class Planet < Body


  def initialize(name, mass, day, year)
    super(name,mass)
    @day = day
    @year = year
  end

  def self.create(name, mass, day, year)
    new_planet = Planet.new(name, mass, day, year)
    @@bodies << new_planet
    return new_planet
  end

  def mass
    return @mass
  end
end

# =====================================================

class Star < Body

  def initialize(name, mass, type)
    super(name, mass)
    @type = type
  end

  def self.create(name, mass, type)
   new_star = Star.new(name, mass, type)
   @@bodies.push(new_star)
   return new_star
  end

  def mass
    return @mass
  end
end

# =====================================================

class Moon < Body

  def initialize(name, mass, month, planet)
    super(name, mass)
    @month = month
    @planet = planet
  end

  def self.create(name, mass, month, planet)
    new_moon = Moon.new(name, mass, month, planet)
    @@bodies.push(new_moon)
    return new_moon
  end

  def mass
    return @mass
  end
end


# =====================================================
