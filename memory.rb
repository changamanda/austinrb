class Memory

  attr_accessor :topic

  def initialize(topic)
    @topic = topic
  end

  def self.make(experience)
    madness = reflect_upon experience
    puts madness[1..3].join(" ")
    puts madness[4..7].join(" ")
    puts madness[8..11].join(" ")
  rescue
    puts "dreaming..."
  end

  def self.reflect_upon(experience)
    experience.split.uniq.shuffle.reject! {|thought| ["and", "or", "the", "a", "an"].include? thought.downcase }
  rescue
    puts "thinking..."
  end

  def self.dream
    sleep 2
    puts
  end

end
