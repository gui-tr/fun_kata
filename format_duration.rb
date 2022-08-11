# require 'pry'

def format_duration(seconds)

  y_in_s = 31536000
  d_in_s = 86400
  h_in_s = 3600
  min_in_s = 60

  y = 0
  d = 0
  h = 0
  min = 0
  sec = 0

  output = ""
  remain = 0

  # YEARS

  loop do
    if seconds > y_in_s
      y = seconds / y_in_s
      remain = seconds % y_in_s
      break
    else
      remain = seconds
      break
    end
  end

  # DAYS

  loop do
    if remain > d_in_s
      d = remain / d_in_s
      remain = remain % d_in_s
      break
    else
      break
    end
  end

  # HOURS

  loop do
    if remain > h_in_s
      h = remain / h_in_s
      remain = remain % h_in_s
      break
    else
      break
    end
  end

  # MIN

  loop do
    if remain > min_in_s
      m = remain / min_in_s
      remain = remain % min_in_s
      break
    else
      break
    end
  end

  # SEC

  loop do
    if remain > 1
      s = remain
      break
    else
      break
    end
  end

  y_tag = "#{h} year"
  y_tag_pl = "#{h} years"

  d_tag = "#{h} day"
  d_tag_pl = "#{h} days"

  h_tag = "#{h} hour"
  h_tag_pl = "#{h} hours"
  
  min_tag = "#{min} minute"
  min_tag_pl = "#{min} minutes"
  
  sec_tag = "#{sec} minute"
  sec_tag_pl = "#{sec} minutes"


  #Y
  if y != 0
    if y == 1
      output << y_tag + ", "
    elsif y > 1
      output << y_tag_pl + ", "
    end
  end

  #D
  if d != 0
    if d == 1
      output << d_tag + ", "
    elsif d > 1
      output << d_tag_pl + ", "
    end
  end

  #H
  if h != 0
    if h == 1
      output << h_tag + ", "
    elsif h > 1
      output << h_tag_pl + ", "
    end
  end

  #M
  if min != 0
    if min == 1
      output << min_tag + "and "
    elsif min > 1
      output << min_tag_pl + "and "
    end
  end

  #S
  if sec != 0
    if sec == 1
      output << sec_tag
    else
      output << sec_tag_pl
    end
  end


  # binding.pry
 
  p output

end

format_duration(4494994)