require_relative "../object_oriented/05.mammals_class_def"

class Dog
  def initialize(name="Anon.")
    @name=name
    @records={}
    @history={}
  end

  def records
    @records
  end
  def set_record(type, value)
    @records[type]=value
  end

  def access_record
    # This method gives access to each record for the Dog, keeping track of any changes that occur.
    orig_values = @records.clone

    self.records.each do |type, value|
      yield type, value
    end

    orig_values.each do |key, value|
      # Check if one of the original values changed
      if @records[key] != value
        @history[key] ||= []
        @history[key] << value
      end
    end
  end

  def history
    @history
  end
end

d=Dog.new("Rover")
d.set_record("shot", "rabies")

d.update_record do |type, value|
  # Do something with the record - if there's a rabies shot, give it a second one.
  if type == 'shot' and value == 'rabies' 
    d.set_record('shot', 'rabies_2')
  end
end
d.update_record do |type, value| 
  # Do something with the record - if there was a 2nd shot, give it a 3rd.
  if type == 'shot' and value == 'rabies_2' 
    d.set_record('shot', 'rabies_3')
  end
end

# Let's list all the things we did to this poor puppy.
puts d.history
puts d.records
