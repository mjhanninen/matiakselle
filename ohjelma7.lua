function pelaa_kierros()
    print()
    print('Kruuna, klaava, vai lopetetaanko (R/L/Q)?')
    vastaus = io.read()
    if vastaus == 'Q' or vastaus == 'q' then
        print('Hei hei! Mukava kun pelasit.')
        return
    elseif vastaus == 'R' or vastaus == 'r' then
        arvaus = 'kruuna'
    elseif vastaus == 'L' or vastaus == 'l' then
        arvaus = 'klaava'
    else
        print('En ymmärrä vastausta "' .. vastaus .. '".')
        return pelaa_kierros()
    end
    if math.random(2) == 1 then
        kolikko = 'kruuna'
    else
        kolikko = 'klaava'
    end
    if arvaus == kolikko then
        print('Veikkaisit ' .. arvaus ..
              ' ja tuli ' .. kolikko .. '. VOITIT!')
    else
        print('Voi voi, veikkasit ' .. arvaus ..
              ' ja tuli ' .. kolikko .. '. HÄVISIT!')
    end
    return pelaa_kierros()
end

print('Hei, pelataan kolikonheittoa. Tässä vähän ohjeita: Veikkaa joko kruunaa')
print('vastaamalla R tai klaavaa vastaamalla L. Jos haluat lopettaa, vastaa Q.')

pelaa_kierros()
