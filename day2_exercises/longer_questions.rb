
questions = ["What is your name", "How are you?", "Is that right?", "Are you John?", "How is everything?"]
# Return an array of questions whose total char count is > 15
result = questions.select {|str| str.length > 15}
print result
