def clause(min,max)
    print "Hodor"
    (min - 1 + rand(max - min + 1)).times do
        print " Hodor"
    end
end

100.times do
    type = rand(10)
    if type == 0
        clause(1,8)
        puts "?"
    elsif type == 1
        clause(1,4)
        puts "!"
    elsif type ==2
        clause(3,5)
        print ", "
        clause(5,8)
        puts "."
    else
        clause(3,9)
        puts "."
    end
end

