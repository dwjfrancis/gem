# creating a gem to color text on the terminal output.
# colors and number for text modification
#  red - 31
#  green - 32
#  yellow - 33
#  blue - 34
#  pink - 35 actually magenta but....
#  light_blue - 94
#  white - 97
#  light_grey - 37
#  black - 30

class String

  @@color_set = {red: 31,green: 32,yellow: 33,blue: 34,pink: 35,light_blue: 94,white: 97,light_gray: 37,black: 30}


  def self.create_colors
 
    @@color_set.each do |key, value| String.class_eval("def #{key}; \"\e[#{value}m\#{self.to_s}\e[0m\"; end") 
    end

  end

  def colors
    print @@color_set.keys
    puts ""
  end
 
  def sample_colors
    @@color_set.each do |key, value|
      puts "This is " + "\e[#{value}m#{key}\e[0m."
    end
  end

end

