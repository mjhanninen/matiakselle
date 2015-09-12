tiedosto = io.open('ohjelma12.txt', 'r')
if tiedosto then
    viesti = tiedosto:read('*all')
    tiedosto:close()
    print('Viestisi viime kerralta:')
    print(viesti)
end

print('Kirjoita viesti ensi kertaa varten:')
uusi_viesti = io.read()

tiedosto = io.open('ohjelma12.txt', 'w')
tiedosto:write(uusi_viesti)
tiedosto:close()
