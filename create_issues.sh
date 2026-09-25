#!/bin/bash

# ChordNoob MVP - Create 42 GitHub Issues
# Run this script from the repository root: bash create_issues.sh

REPO="pekkimo/ChordNoob"
GH_CLI_AVAILABLE=$(command -v gh &> /dev/null && echo "yes" || echo "no")

if [ "$GH_CLI_AVAILABLE" != "yes" ]; then
    echo "GitHub CLI (gh) is required. Install it from https://cli.github.com"
    exit 1
fi

# Function to create issue
create_issue() {
    local title=$1
    local body=$2
    local labels=$3
    
    gh issue create \
        --repo "$REPO" \
        --title "$title" \
        --body "$body" \
        --label "$labels"
}

echo "Creating ChordNoob MVP Issues..."
echo ""

# Phase 1: Projektin perustaminen
echo "Phase 1: Projektin perustaminen"
create_issue "Luo Xcode-projekti Swift + SwiftUI pohjalla" "Perusta uusi Xcode-projekti ChordNoob sovellukselle käyttäen SwiftUI frameworkia." "enhancement,setup"
create_issue "Aseta projektin perusrakenne (App, Views, Models)" "Järjestele projektin mapparakenne:\n- App/\n- Views/\n- Models/\n- Services/\n- Utilities/" "enhancement,setup"
create_issue "Lisää SPM riippuvuudet (FFT, Audio Processing)" "Lisää tarvittavat Swift Package Manager riippuvuudet:\n- Accelerate framework (FFT)\n- AVFoundation" "enhancement,setup"

# Phase 2: Soinnun data ja mallit
echo "Phase 2: Soinnun data ja mallit"
create_issue "Luo Chord-datarakenne (nimi, perustaajuus, säveliä)" "Luo Swift struct Chord joka sisältää:\n- name: String\n- rootFrequency: Double\n- notes: [String]" "enhancement,model"
create_issue "Määritä 6 perus-akkordia: Am, E, A, D, G, C" "Määritä kaikkien 6 perus-akordin taajuudet ja säveliä.\n\nAm, E, A, D, G, C" "enhancement,model"
create_issue "Luo ChordDatabase (kaikki soinnut + niiden taajuudet)" "Luo ChordDatabase luokka joka sisältää kaikki 6 akkordia ja niiden taajuusarvot." "enhancement,model"

# Phase 3: UI - Aloitusnäyttö
echo "Phase 3: UI - Aloitusnäyttö"
create_issue "Suunnittele aloitusnäytön layout" "Suunnittele aloitusnäytön UI layout SwiftUI:lla" "enhancement,ui,design"
create_issue "Toteutaa soinnin valinta (toggles 6 akordin joukosta)" "Toteutaa käyttäjälle mahdollisuus valita harjoiteltavat soinnut toggle-painikkeilla." "enhancement,ui"
create_issue "Harjoitteluajan asetus (slider 1-30 minuuttia)" "Lisää slider komponetti joiden avulla voidaan valita harjoitteluaika 1-30 minuutin välillä." "enhancement,ui"
create_issue "Aloita harjoittelu -painike" "Luo painike joka siirtää aloitusnäytöltä harjoitusnäyttöön." "enhancement,ui"

# Phase 4: Audio capturing
echo "Phase 4: Audio capturing"
create_issue "Toteutaa äänen kapteerointi AVFoundation:lla" "Toteutaa äänen kapteerointi iPhonen mikrofonilta AVAudioEngine käyttäen." "enhancement,audio"
create_issue "Testaa että mikrofoni toimii" "Testaa että sovellus pystyy kaappaamaan ääntä mikrofonilta ja prosessoimaan sitä." "testing,audio"
create_issue "Aseta audio sessiokonfiguraatio" "Konfiguroi AVAudioSession oikein (category, mode, options)." "enhancement,audio"

# Phase 5: FFT & taajuusanalyysi
echo "Phase 5: FFT & taajuusanalyysi"
create_issue "Toteutaa FFT-analyysi (Accelerate framework)" "Toteutaa Fast Fourier Transform analyysi käyttäen Accelerate frameworkia äänidatalle." "enhancement,audio"
create_issue "Testaa FFT:n tulosten oikeellisuus" "Testaa että FFT tuottaa oikeat taajuusarvot testidatalle." "testing,audio"
create_issue "Luo frekvenssianalysaattori-luokka" "Luo FrequencyAnalyzer luokka joka kapseloi FFT-logiikan." "enhancement,audio"

# Phase 6: Soinnun tunnistus
echo "Phase 6: Soinnun tunnistus"
create_issue "Luo akordintunnistin (tunnistaa dominantit taajuudet)" "Toteutaa ChordDetector luokka joka tunnistaa dominantit taajuudet äänianalyysin perusteella." "enhancement,audio"
create_issue "Vertaa taajuuksia tunnettuihin soinnun taajuuksiin" "Vertaa löydettyjä taajuuksia tunnettuihin soinnun taajuuksiin ja palauta vastava sointu." "enhancement,audio"
create_issue "Testaa akordintunnistus eri soinnuilla" "Testaa akordintunnistusta soittamalla eri sointuja ja varmista että tunnistus toimii." "testing,audio"
create_issue "Optimoi tunnistustarkkuus" "Säädä toleransseja ja algoritmia paremman tunnistustarkkuuden saamiseksi." "enhancement,audio"

# Phase 7: Harjoitusnäyttö - UI
echo "Phase 7: Harjoitusnäyttö - UI"
create_issue "Suunnittele harjoitusnäytön layout" "Suunnittele harjoitusnäytön UI layout SwiftUI:lla" "enhancement,ui,design"
create_issue "Näytä nykyinen kohde-sointu tekstinä" "Näytä harjoitusnäytöllä nykyinen kohde-sointu selkeästi tekstinä." "enhancement,ui"
create_issue "Näytä soinnun nappulakaavio" "Lisää visuaalinen nappulakaavio (fretboard diagram) näyttämään soinnun sormitusta." "enhancement,ui,design"
create_issue "Näytä aika-mittari (jäljellä oleva aika)" "Näytä harjoittelulle jäljellä oleva aika selkeästi näytöllä." "enhancement,ui"

# Phase 8: Harjoitusnäyttö - Logiikka
echo "Phase 8: Harjoitusnäyttö - Logiikka"
create_issue "Yhdistä audio-analyysi harjoitusnäyttöön" "Yhdistä äänentunnistus- ja analysointilogiikka harjoitusnäyttöön." "enhancement,feature"
create_issue "Näytä Listening... indikaattori" "Näytä käyttäjälle että sovellus kuuntelee ja analysoi ääntä." "enhancement,ui"
create_issue "Näytä Chord detected kun sointu tunnistetaan" "Näytä visuaalinen palautus kun sointu on onnistuneesti tunnistettu." "enhancement,ui"
create_issue "Siirrä seuraavaan soinnuun automaattisesti" "Kun sointu on tunnistettu, siirrä automaattisesti seuraavaan soinnuun." "enhancement,feature"

# Phase 9: Palaute & Audio
echo "Phase 9: Palaute & Audio"
create_issue "Lisää äänipalauteet onnistumiselle" "Toista äänipalautetta (beep/success sound) kun sointu on onnistuneesti soitettu." "enhancement,audio"
create_issue "Lisää visuaalinen palaute (väri, animaatio)" "Lisää visuaalinen palaute animaatiolla kun sointu tunnistetaan (värin muutos, vilkkuminen)." "enhancement,ui"
create_issue "Lisää väärän soinnun ilmoitus" "Ilmoita käyttäjälle jos väärä sointu on tunnistettu." "enhancement,ui"

# Phase 10: Yhteenveto-näyttö
echo "Phase 10: Yhteenveto-näyttö"
create_issue "Suunnittele yhteenveto-näytön layout" "Suunnittele yhteenveto-näytön UI layout SwiftUI:lla" "enhancement,ui,design"
create_issue "Näytä onnistuneet soinnut" "Näytä harjoittelussa onnistuneesti soitetut soinnut yhteenveto-näytöllä." "enhancement,ui"
create_issue "Näytä statistiikkaa (aika, yritysten määrä)" "Näytä harjoittelun statistiikkaa: kulunut aika, yritysten määrä, onnistumisprosentti." "enhancement,ui"
create_issue "Uusi harjoittelu -painike" "Luo painike joka palauttaa käyttäjän aloitusnäyttöön uuden harjoittelun aloittamista varten." "enhancement,ui"

# Phase 11: Testing & Viimeistely
echo "Phase 11: Testing & Viimeistely"
create_issue "Unit-testit akordintunnistukselle" "Kirjoita unit-testit ChordDetector-luokalle." "testing"
create_issue "UI-testit navigoinnille" "Kirjoita UI-testit navigoinnille näyttöjen välillä." "testing"
create_issue "Testaa koko sovelluksen flow end-to-end" "Suorita kokonainen harjoitteluflow alusta loppuun asti ja testaa että kaikki toimii." "testing"
create_issue "Performance-optimointi" "Optimoi sovelluksen suorituskykyä, erityisesti äänenkäsittelyn osalta." "enhancement,performance"

# Phase 12: Dokumentaatio
echo "Phase 12: Dokumentaatio"
create_issue "Päivitä README.md käyttöohjeilla" "Kirjoita README.md tiedostoon käyttöohjeet ja asennus-ohjeet." "documentation"
create_issue "Lisää architecture-dokumentaatio" "Dokumentoi sovelluksen arkkitehtuuri ja moduulien väliset yhteydet." "documentation"
create_issue "Lisää setup-ohjeet kehittäjille" "Kirjoita kehittäjille ohjeet kuinka kehitysympäristö ja projekti asetetaan." "documentation"

echo ""
echo "✅ All 42 issues created successfully!"
