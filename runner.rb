def assert_equals(actual, expected)
  if actual != expected
    puts ""
    puts "Fail: expected = #{expected} but actual = #{actual}"
  else
    print "."
  end
end

def change(amount)
  result = []
  result[0] = 0
  cnt = 0

  # (1..10).each do |cnt|
  #   result[cnt] = result[cnt-1] + 1
  # end
  return change_loop(amount,cnt, result)
end

def change_loop(amount,cnt,result)
  
  if(cnt > amount)
    return result[amount]
  end

  if(cnt >= 1)
    result[cnt] = result[cnt-1] + 1
  end

  if(cnt >= 10 && result[cnt] > result[cnt-10] + 1)
    result[cnt] = result[cnt-10] + 1
  end

  if(cnt >= 7 && result[cnt] > result[cnt-7] + 1)
    result[cnt] = result[cnt-7] + 1
  end

  change_loop(amount,cnt+1,result)
end


# def change_loop(left, cnt, result)
#   result.push(cnt) if left == 0
#   return if left <= 0

#   change_loop(left - 1, cnt + 1, result)
#   change_loop(left - 7, cnt + 1, result)
#   change_loop(left - 10, cnt + 1, result)
# end

 assert_equals(change(1), [1].length)
 assert_equals(change(5), [1, 1, 1, 1, 1].length)
 assert_equals(change(10), [10].length)
 assert_equals(change(13), [10, 1, 1, 1].length)

assert_equals(change(7), [7].length)
# assert_equals(change(14), [7, 7].length)
# assert_equals(change(15), [7, 7, 1].length)
# assert_equals(change(19), [10, 7, 1, 1].length)
# assert_equals(change(27), 3)
# assert_equals(change(24), 3)
# (1..10000).each do |i|
  puts "change=#{change(8186)}"
# end
puts "\n"



