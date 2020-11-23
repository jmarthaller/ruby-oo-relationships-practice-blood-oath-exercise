require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


blue_oyster = Cult.new("Blue Oyster", "NYC", 1969, "kill kill")
heavens_gate = Cult.new("Heaven's Gate", "San Diego", 1997, "time for bed")
aum_shiniriko = Cult.new("Aum Shinriko", "Tokyo", 1992, "Hurry!")
hillsong = Cult.new("hillsong", "NYC", 2008, "RA RA RA!")

jacob = Follower.new("jacob", 30, "ooo fun")
amy = Follower.new("amy", 45, "that's mine!")
jenna = Follower.new("jenna", 60, "v spooky")
kyle = Follower.new("kyle", 22, "Let's go!")

dawn = BloodOath.new(blue_oyster, jacob, "1990_02_19")
noon = BloodOath.new(heavens_gate, jenna, "1990_09_25")
dusk = BloodOath.new(aum_shiniriko, jacob, "1994_08_12")
midnight = BloodOath.new(heavens_gate, amy, "1998_11_01")
three_am = BloodOath.new(hillsong, jenna, "2008_05_22")
sunday_morn = BloodOath.new(hillsong, kyle, "1995_12_25")

binding.pry



puts "Mwahahaha!" # just in case pry is buggy and exits