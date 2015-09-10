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
