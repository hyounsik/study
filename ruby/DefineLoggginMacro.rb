class Example
  def self.add_logging  # class method. reciever is class
    def log(msg)  #self is class. this means normal class definition
      STDERR.puts Time.now.strftime("%H:%M:%s")  + "#{self} (#{msg})"
    end
  end
  add_logging
end

ex = Example.new
ex.log("hello")


class ExampleII < Example  # extend class method # *singleton class hierachy parallels the regular class hierachy 
  add_logging
end

exII = ExampleII.new
exII.log("hello II")



#use built in macro -> define
class Logger
  def self.add_logging(id_string)
    define_method(:log) do |msg|     #clousure
      now = Time.now.strftime("%H:%M;%S")
      STDERR.puts "#{now}-#{id_string}: #{self} (#{msg})"
    end
  end
end

class Song < Logger
  add_logging "Tune" 
end

class Album < Logger
  add_logging "tune" # create new method for Album
end

song = Song.new
song.log("rock on")