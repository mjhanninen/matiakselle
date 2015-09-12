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
