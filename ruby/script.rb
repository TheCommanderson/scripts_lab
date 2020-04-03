puts "Meow?\n"
puts "1. Meow?\n2. Meow!\n3. Meow >:["
ans = gets.chomp.to_i
while not [1,2,3].include? ans
  puts "MEOW!!\n"
  puts "1. Meow?\n2. Meow!\n3. Meow >:["
  ans = gets.chomp.to_i
end

if ans == 1
  puts "Meow...\n"

elsif ans == 2
  puts "Me-ooooooow!\n"
  puts "
       _                        
       \`*-.                    
        )  _`-.                 
       .  : `. .                
       : _   '  \               
       ; *` _.   `*-._          
       `-.-'          `-.       
         ;       `       `.     
         :.       .        \    
         . \  .   :   .-'   .   
         '  `+.;  ;  '      :   
         :  '  |    ;       ;-. 
         ; '   : :`-:     _.`* ;
      .*' /  .*' ; .*`- +'  `*' 
      `*-*   `*-*  `*-*'"
else
  puts ":O meow?!?!"
end
