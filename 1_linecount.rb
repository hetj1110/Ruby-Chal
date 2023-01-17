file = File.open("file.txt","r+") 
f1 = file.read()
f2 = f1.delete("\n")
num = 0
# Characters Count with space
print "Characters Count with space :: "
puts f2.size # 6161

# Characters Count without space
a = f2.delete(" ")
print "Characters Count without space :: "
puts a.size # 5134

# Line Count
b = f1.each_line.to_a
b1 = b.delete("\n")
print "Line Count :: "
puts b1.size # 118

f3 = f1.each_char.to_a
lan = f3.length
arr = []
# Words Count
for i in 0..lan
    if f3[i] == " "
        arr.push(i)
    end 
end
no_words = arr.size
print "Words Count :: "
puts no_words # 1027


arr3 = []
# Sentences Count
for i in 0..lan
    if f3[i] == "."
        arr3.push(i)
    end 
end
no_sentences = arr3.size
print "Sentences Count :: "
puts arr3.size # 35


# Paragraph Count
arr2 = []
for i in 0..lan
    arr2.push(i) if f3[i] == "/n" && f3[i+1] == "/n"
end
no_paragraph = arr2.size
print "Paragraph Count :: "
puts arr2.size  # 



# Average number of words per sentence
avg_no_of_words = no_words/no_sentences
print "Average number of words per sentence :: "
puts avg_no_of_words.to_i # 29
# Average number of sentences per paragraph


# Hyphened words count


