# Pieniä ohjelmia kokeiltavaksi

## Ohjelma 1

```lua
for i = 1, 5 do
    print('Heippa ' .. i)
end
```

## Ohjelma 2

```lua
print('Mikä sinun nimi on?')
nimi = io.read()
print('Terve, ' .. nimi .. '!')
```

## Ohjelma 3

```lua
for i = 1, 5 do
    for j = 1, 5 do
        print(i .. ' kertaa ' .. j .. ' on ' .. (i * j))
    end
end
```

## Ohjelma 4

```lua
print('Anna luku?')
i = tonumber(io.read())
print('Anna toinen luku?')
j = tonumber(io.read())
print(i .. ' kertaa ' .. j .. ' on ' .. (i * j))
```

## Ohjelma 5

```lua
salasana = 'mustis'
for i = 3, 1, -1 do
    print('Anna salasana?')
    arvaus = io.read()
    if arvaus == salasana then
        print('PIIP! Oikein! Kassakaappi avautuu hitaasti ja sen oven raosta')
        print('kimmeltää jotain hohtavaa.')
        os.exit()
    else
        print('PIIP! Väärä salasana.')
    end
end
print('Hälytyskellot pärähtävät kovaäänisesti. Kuulet vartioiden askeleiden')
print('lähestyvän ripeästi kulman takaa.')
```

## Ohjelma 6

```lua
function kysy(kysymys)
    print(kysymys)
    return io.read()
end

function tervehdi(nimi)
    print('Terve, ' .. nimi .. '!')
end

vastaus = kysy('Mikä sinun nimi on?')
tervehdi(vastaus)
```

## Ohjelma 7

```lua
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
        print('Veikkasit ' .. arvaus ..
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
```

## Ohjelma 8

```lua
for i = 1, 10 do
    for j = 1, i do
        io.write('*')
    end
    io.write('\n')
end
```

## Ohjelma 9

```lua
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
```

## Ohjelma 10

```lua
askeleita_enintaan = 8

piirustusmerkit = { ' ', '.', ':', '+', '*', '#', '@', ' ' }

for y = 1, 70 do

    for x = 1, 80 do

        local piste_r = (x - 50.5) / 25
        local piste_i = (y - 35.5) / 25

        function laske_askeleet(z_r, z_i, askel)
            if askel >= askeleita_enintaan then
                return askeleita_enintaan
            elseif z_r * z_r + z_i * z_i > 4 then
                return askel
            else
                local uusi_z_r = z_r * z_r - z_i * z_i + piste_r
                local uusi_z_i = 2 * z_r * z_i + piste_i
                return laske_askeleet(uusi_z_r, uusi_z_i, askel + 1)
            end
        end

        local askel = laske_askeleet(0, 0, 0)

        io.write(piirustusmerkit[askel])

    end

    io.write('\n')

end
```

## Ohjelma 11

```lua
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
```

## Ohjelma 12

```lua
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
```

## Ohjelma 13

```lua
aika_aloittaessa = os.time()
print('Kun olet valmis, paina Enter.')
io.read()
aika_lopettaessa = os.time()
kuluneet_sekunnit = aika_lopettaessa - aika_aloittaessa
if kuluneet_sekunnit == 0 then
    print('Sinulla ei kestänyt sekuntiakaan ollaksesi valmis.')
elseif kuluneet_sekunnit == 1 then
    print('Sinulla kesti yksi sekunti ollaksesi valmis.')
else
    print('Sinulla kesti ' .. kuluneet_sekunnit .. ' sekuntia ollaksesi valmis.')
end
```

# Hieman pidempiä ohjelmia

## Arvaa, mikä eläin?

```lua
muisti = {
    kysymys = 'Elääkö se vedessä?',
    kylla = {
        kysymys = 'Onko sillä kova kilpi?',
        kylla = {
            arvaus = 'kilpikonna'
        },
        ei = {
            arvaus = 'kultakala'
        }
    },
    ei = {
        kysymys = 'Haukkuuko se?',
        kylla = {
            arvaus = 'koira'
        },
        ei = {
            arvaus = 'kissa'
        }
    }
}

function kysy(kysymys)
    print(kysymys)
    return io.read()
end

function kylla_tai_ei(kysymys)
    print(kysymys)
    while true do
        vastaus = io.read()
        if vastaus == 'k' or vastaus == 'K' then
            return true
        elseif vastaus == 'e' or vastaus == 'E' then
            return false
        else
            print('En ymmärrä vastaustasi. Vastaa joko K (=kyllä) tai E (=ei).')
        end
    end
end

function arvaile(muisti)
    if muisti.kysymys then
        vastaus = kylla_tai_ei(muisti.kysymys)
        if vastaus then
            arvaile(muisti.kylla)
        else
            arvaile(muisti.ei)
        end
    else
        vastaus = kylla_tai_ei('Hei, onko se ' .. muisti.arvaus .. '?')
        if vastaus then
            print('Minä tiesin sen!')
        else
            opi(muisti)
        end
    end
end

function opi(muisti)
    vanha_elain = muisti.arvaus
    muisti.arvaus = nil
    uusi_elain = kysy('Voi vitsi, luovutan. Mikä eläin se oli?')
    uusi_kysymys =
        kysy('Kerro kysymys, joka erottaa eläimet ' .. vanha_elain .. ' ja ' ..
             uusi_elain .. ' toisistaan:')
    vastaa_uudelle_kylla =
        kylla_tai_ei('Mikä on kysymyksesi vastaus eläimelle ' ..
                     uusi_elain .. '?')
    muisti.kysymys = uusi_kysymys
    if vastaa_uudelle_kylla then
        muisti.kylla = { arvaus = uusi_elain }
        muisti.ei = { arvaus = vanha_elain }
    else
        muisti.kylla = { arvaus = vanha_elain }
        muisti.ei = { arvaus = uusi_elain }
    end
end

repeat
    kysy('Valitse mielessäsi eläin ja paina Enter, kun olet valmis.')
    arvaile(muisti)
until not kylla_tai_ei('Haluatko pelata uudestaan?')

print('Kiitos, oli kiva pelata sinun kanssa.')
```
