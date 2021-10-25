class Statement 
  attr_reader :timestamp

def initialize 
  @timestamp = Time.now.strftime("%d/%m/%Y")
end 

end 