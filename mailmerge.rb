# A function to mimic sinatra's erb method
def erb(filename)
  ERB.new(File.read("views/#{filename}.erb")).result
end