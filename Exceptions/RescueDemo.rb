def raise_and_rescue
  begin
    puts 'Before the raise'
    raise 'Raise an error'
    puts 'After the raise'
    puts 'Notice that this code still never executes'
  rescue
    puts 'In the rescue: handle the error here'
  end
  puts 'Code after the begin..rescue..end executes normally'
end

raise_and_rescue
