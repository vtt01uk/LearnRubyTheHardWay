## Animal is-a object (yes, sort of confusing) look at the extra credit
class Animal

end

## ?? is-a class
class Dog < Animal
  def initialize(name)
    ## ?? has-a object
    @name = name
  end
end

## ?? is-a class
class Cat < Animal
  def initialize(name)
  ## ?? has-a object
  @name = name
  end
end

## ?? is-a class
class Person

  attr_accessor :pet

  def initialize(name)
    ## ?? has-a object
    @name = name
    
    ## Person has-a pet of some kind (has-a object)
    @pet = nil
  end
end

## ?? is-a class
class Employee < Person

  def initialize(name, salary)
    ## ?? hmm what is this strange magic?
    super(name)
    ## has-a object
    @salary = salary
  end
end

## ?? is-a classt
class Fish
end

## ?? is-a class
class Salmon < Fish
end

## ?? is-a class
class Halibut < Fish
end

## rover is-a Dog
rover = Dog.new("Rover")

## ?? is-a Cat
satan = Cat.new("Satan")

## ?? is-a Person
mary = Person.new("Mary")

## ?? has-a object
mary.pet = satan

## ?? is-a Employee
frank = Employee.new("Frank", 120000)

## ?? has-a object
frank.pet = rover

## ?? is-a object
flipper = Fish.new

## ?? is-a object
crouse = Salmon.new

## ?? is-a object
harry = Halibut.new 
