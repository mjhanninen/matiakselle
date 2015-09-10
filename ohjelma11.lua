for i = 1, 20 do
    for j = 1, 20 - i do
        io.write('>')
    end
    for j = 1, 2 * i - 1 do
        io.write('#')
    end
    for j = 1, 20 - i do
        io.write('<')
    end
    io.write('\n')
end
