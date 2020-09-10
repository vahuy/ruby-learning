def is_nguyen_to(n)
  i = n - 1
  while i > 2
    if n % i == 0
      return false
    end
    i -= 1
  end
  true
end

def xuat_nguyen_to
  a = [10,20,13,17,30,33,45,99,100,101,103,105,601,111,191, 31, 71]
  i = 0.0
  a.each do |i|
    if is_nguyen_to(i)
      puts a.index(i)
    end
  end
end

def tong_am
  a = [-10,-20,13,17,30,-33,45,99,100,101,103,105,601,111,191, 31, -71]
  i = 0
  s = 0
  while a.length > i
    c = a.at(i)
    if 0 > c
      s += c
    end
    i += 1
  end
  puts "tong am #{s}"
end

def xep_tang_dan
  a = [-10,-20,13,17,30,-33,45,99,-71,100,101,103,105,601,111,191, 31,-71,-10]
  result = []
  while a.length > 0
    c = a.min
    ii = a.count(c)
    while ii > 0
      result.push(c)
      ii -= 1
    end
    a.delete(c)
  end
  puts result.to_s
end

def xep_giam_dan
  a = [-10,-20,13,17,30,-33,45,99,-71,100,101,103,105,601,111,191, 31,-71,-10]
  result = []
  while a.length > 0
    c = a.max
    ii = a.count(c)
    while ii > 0
      result.push(c)
      ii -= 1
    end
    a.delete(c)
  end
  puts result.to_s
end

def tim_vt_chan
  a = [-10,-20,13,17,30,-33,45,99,-71,100,101,103,105,601,111,191, 31,-71,-10]
  result = []
  i = 0
  while i < a.length
    if a.at(i) % 2 == 0
      result.push(i)
    end
    i +=1
  end
  puts result.to_s
end

# xuat_nguyen_to
# tong_am
# xep_tang_dan
# xep_giam_dan
# tim_vt_chan
#

def tim_duong_dau
  # a = [-10,-20,13,17,30,-33,45,99,-71,100,101,103,105,601,111,191, 31,-71,-10,2]
  a = [-10,-2,-3]
  i = 0
  while i < a.length
    c = a.at(i)
    if c > 0
      if !@min || @min > c
        @min = c
      end
    end
    i += 1
  end
  puts @min ? @min : -1
end

xuat_nguyen_to
# tim_duong_dau