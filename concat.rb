def find_substring(s, words)
 
  #generate aa new array with possible concatenations
  def concat(w)
      new_arr = []
      w.permutation.to_a.each do |conc|
      new_arr << conc.join
      end
      new_arr
  end
  
  poss_concat = concat(words)
  
  #get concat length
  concat_length = poss_concat[0].length
  
  #get length of s string
  s_string_length = s.length

  # populate the string variable with letters from iteration

  output = []
  s_index = 0

  loop do

    string_check = ""
    word_index = 0

    while word_index < concat_length
        string_check << s[s_index..-1][word_index].to_s
        word_index += 1
    end

    if poss_concat.include?(string_check)
      output << s_index
    end

    break if (s_index + 1) == s_string_length
    
    s_index += 1

  end
  
  output
  
end

# ("barfoothefoobarman"
# ["foo","bar"] 
# => [0, 9]


# "wordgoodgoodgoodbestword"
# ["word","good","best","word"]
# => [6, 9, 12]
