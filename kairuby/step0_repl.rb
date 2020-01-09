# Add the 4 trivial functions READ, EVAL, PRINT, and rep (read-eval-print).
# READ, EVAL, and PRINT are basically just stubs that return their first parameter
# (a string if your target language is a statically typed)
# and rep calls them in order passing the return to the input of the next.

def READ str
  str
end

def EVAL str
  str
end

def PRINT str
  str
end

def rep
  loop do
    print 'user> '
    response = gets
    break unless response
    read_string = READ(response.strip)
    evaluated_string = EVAL(read_string)
    printed_string = PRINT(evaluated_string)
    puts printed_string
  end
  puts
end

rep