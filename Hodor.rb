$DEBUG = true
$TYPEWRITER = false
$PAGE_WIDTH = 80

$COL = 0
$MAX = 9

def clause(min,max)
    print "Hodor"
    (min - 1 + rand(max - min + 1)).times do
        print " Hodor"
    end
end

def sentence(type)
    type %= $MAX
    if type == 0
        clause(1,8)
        print "? "
    elsif type == 1
        clause(1,4)
        print "! "
    elsif type == 2
        clause(3,5)
        print ", "
        clause(5,8)
        print ". "
    elsif type == 3
        clause(3,5)
        print "; "
        clause(5,8)
        print ". "
    else
        clause(3,9)
        print ". "
    end

    if $TYPEWRITER
        print " "
    end

    if $DEBUG
        puts ""
    end
end

100.times do ## change for number of sentences
    type = rand($MAX)
    sentence(type)

end

if $DEBUG
    (0..$MAX - 1).each do |i|
        sentence(i)
    end
end