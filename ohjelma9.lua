for i = 1, 50 do
    if i % 2 == 0 then
        io.write(' ')
    end
    for j = 1, 40 do
        if math.random(2) == 1 then
            io.write('\\ ')
        else
            io.write('/ ')
        end
    end
    io.write('\n')
end
