
## o(n!)
def first_anagram?(str1,str2)
  perms = str1.split("").permutation.to_a
  perms.map! { |sub| sub.join("") }
  perms.any? {|word| str2 == word }
end

##n^2
def second_anagram?(str1,str2)
  str1.each_char do |char|
    if str2.index(char)
      delete_index = str2.index(char)
      str2 = str2.split("")
      str2.delete_at(delete_index)
      str2 = str2.join("")
    else
      return false
    end
  end
  str2.empty?
end
# p second_anagram?("caa", "aca") #true

def third_anagram?(str1,str2)
  str1.split("").sort == str2.split("").sort
end

# p third_anagram?("caa", "aca") #true
 
# def fourth_anagram?(str1,str2)
#   str1_hash = Hash.new(0)
#   str2_hash = Hash.new(0)

#   str1.each_char { |char| str1_hash[char] += 1}
#   str2.each_char { |char| str2_hash[char] += 1}
#   str1_hash == str2_hash

# end
def fourth_anagram?(str1,str2)
  str_hash = Hash.new(0)


end
p fourth_anagram?("caa", "aca") #true
