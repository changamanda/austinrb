class Memex

  def self.remember(memory)
    extender = 'https://en.wikipedia.org/w/api.php?format=json&action=query&redirects&prop=extracts&exintro=&explaintext=&titles=' + memory.topic
    HTTParty.get(extender)
  end

  def self.extend(memory)
    information = remember memory
    information["query"]["pages"].values.first["extract"]
  end

end
