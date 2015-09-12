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
