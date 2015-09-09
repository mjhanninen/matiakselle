maksimi_askeleet = 8

for y = 1, 70 do
    for x = 1, 80 do

        local piste_r = (x - 50.5) / 25
        local piste_i = (y - 35.5) / 25

        function laske_askeleet(z_r, z_i, askel)
            if askel >= maksimi_askeleet then
                return maksimi_askeleet
            elseif z_r * z_r + z_i * z_i > 4 then
                return askel
            else
                local uusi_z_r = z_r * z_r - z_i * z_i + piste_r
                local uusi_z_i = 2 * z_r * z_i + piste_i
                return laske_askeleet(uusi_z_r, uusi_z_i, askel + 1)
            end
        end

        local askel = laske_askeleet(0, 0, 0)

        if askel == 1 then
            io.write('`')
        elseif askel == 2 then
            io.write('.')
        elseif askel == 3 then
            io.write(':')
        elseif askel == 4 then
            io.write('+')
        elseif askel == 5 then
            io.write('*')
        elseif askel == 6 then
            io.write('#')
        elseif askel == 7 then
            io.write('@')
        elseif askel == 8 then
            io.write(' ')
        end

    end

    io.write('\n')

end
