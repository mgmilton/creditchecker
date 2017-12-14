class FileReader
  attr_reader :chars

  def initialize
    @chars = 0
  end

  def read
    message = File.open(ARGV[0], "r")
    message.each do |line|
      @chars += line.length
    end

    string = ""
    message.each do |line|
      string += "#{line}\r"*3
    end


    writer = File.open(ARGV[1], "w") {|line|
      line << string
    }
    # writer.write(spaced)
    writer.close
  end
end

k = FileReader.new
k.read
p "Created #{ARGV[1]} containing #{k.chars} characters."
# filename = ARGV[0]
# File.name("message.txt")
