def greeting(repeat_proc)
  puts "おはよう"
  text = repeat_proc.call("こんにちは")
  puts text
  puts "こんばんは"
end

repeat_proc = Proc.new { |text| text * 2 }
greeting(repeat_proc)
