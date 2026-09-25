# ChordNoob - MVP Issue Listaus

## Sovelluksen kuvaus
ChordNoob on iOS-sovellus kitaran sointujen harjoitteluun reaaliaikaisella äänianalyysillä. Sovellus tunnistaa kun käyttäjä soittaa oikean soinnun ja opastaa harjoittelussa.

---

## MVP Features

### Phase 1: Projektin perustaminen
- [ ] **#1** Luo Xcode-projekti Swift + SwiftUI pohjalla
- [ ] **#2** Aseta projektin perusrakenne (App, Views, Models)
- [ ] **#3** Lisää SPM riippuvuudet (FFT, Audio Processing)

### Phase 2: Soinnun data ja mallit
- [ ] **#4** Luo Chord-datarakenne (nimi, perustaajuus, säveliä)
- [ ] **#5** Määritä 6 perus-akkordia: Am, E, A, D, G, C
- [ ] **#6** Luo ChordDatabase (kaikki soinnut + niiden taajuudet)

### Phase 3: UI - Aloitusnäyttö
- [ ] **#7** Suunnittele aloitusnäytön layout
- [ ] **#8** Toteutaa soinnin valinta (toggles 6 akordin joukosta)
- [ ] **#9** Harjoitteluajan asetus (slider 1-30 minuuttia)
- [ ] **#10** "Aloita harjoittelu" -painike

### Phase 4: Audio capturing
- [ ] **#11** Toteutaa äänen kapteerointi AVFoundation:lla
- [ ] **#12** Testaa että mikrofoni toimii
- [ ] **#13** Aseta audio sessiokonfiguraatio

### Phase 5: FFT & taajuusanalyysi
- [ ] **#14** Toteutaa FFT-analyysi (Accelerate framework)
- [ ] **#15** Testaa FFT:n tulosten oikeellisuus
- [ ] **#16** Luo frekvenssianalysaattori-luokka

### Phase 6: Soinnun tunnistus
- [ ] **#17** Luo akordintunnistin (tunnistaa dominantit taajuudet)
- [ ] **#18** Vertaa taajuuksia tunnettuihin soinnun taajuuksiin
- [ ] **#19** Testaa akordintunnistus eri soinnuilla
- [ ] **#20** Optimoi tunnistustarkkuus

### Phase 7: Harjoitusnäyttö - UI
- [ ] **#21** Suunnittele harjoitusnäytön layout
- [ ] **#22** Näytä nykyinen kohde-sointu tekstinä
- [ ] **#23** Näytä soinnun nappulakaavio
- [ ] **#24** Näytä aika-mittari (jäljellä oleva aika)

### Phase 8: Harjoitusnäyttö - Logiikka
- [ ] **#25** Yhdistä audio-analyysi harjoitusnäyttöön
- [ ] **#26** Näytä "Listening..." indikaattori
- [ ] **#27** Näytä "Chord detected" kun sointu tunnistetaan
- [ ] **#28** Siirrä seuraavaan soinnuun automaattisesti

### Phase 9: Palaute & Audio
- [ ] **#29** Lisää äänipalauteet onnistumiselle
- [ ] **#30** Lisää visuaalinen palaute (väri, animaatio)
- [ ] **#31** Lisää väärän soinnun ilmoitus

### Phase 10: Yhteenveto-näyttö
- [ ] **#32** Suunnittele yhteenveto-näytön layout
- [ ] **#33** Näytä onnistuneet soinnut
- [ ] **#34** Näytä statistiikkaa (aika, yritysten määrä)
- [ ] **#35** "Uusi harjoittelu" -painike

### Phase 11: Testing & Viimeistely
- [ ] **#36** Unit-testit akordintunnistukselle
- [ ] **#37** UI-testit navigoinnille
- [ ] **#38** Testaa koko sovelluksen flow end-to-end
- [ ] **#39** Performance-optimointi

### Phase 12: Dokumentaatio
- [ ] **#40** Päivitä README.md käyttöohjeilla
- [ ] **#41** Lisää architecture-dokumentaatio
- [ ] **#42** Lisää setup-ohjeet kehittäjille

---

## Toteutus järjestys
Suositettu järjestys:
1. **Phase 1-2**: Perusta (projekti + data)
2. **Phase 3**: UI aloitusnäyttö
3. **Phase 4-6**: Audio & akordintunnistus (ydin)
4. **Phase 7-9**: Harjoitusnäyttö
5. **Phase 10**: Yhteenveto
6. **Phase 11-12**: Testing & docs

---

## MVP Scope
✅ 6 perus-akkordia  
✅ Reaaliaikainen äänianalyysi  
✅ Nappulakaavio soinnuista  
✅ Äänipalaute onnistumisesta  
✅ Yhteenveto harjoittelusta  
❌ Pistetilastot  
❌ Pelillisyys
