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
