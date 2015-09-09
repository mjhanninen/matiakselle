function kysy(kysymys)
    print(kysymys)
    return io.read()
end

function tervehdi(nimi)
    print('Terve, ' .. nimi .. '!')
end

vastaus = kysy('Mikä sinun nimi on?')
tervehdi(vastaus)
