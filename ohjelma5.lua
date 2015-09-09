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
