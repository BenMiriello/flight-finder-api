# Quote.destroy_all

# require 'uri'
# require 'net/http'
# require 'openssl'
# require 'json'

# url = URI("https://skyscanner-skyscanner-flight-search-v1.p.rapidapi.com/apiservices/browseroutes/v1.0/US/USD/en-US/NYC/LHR/2020-10-01?inboundpartialdate=2020-10-10")

# http = Net::HTTP.new(url.host, url.port)
# http.use_ssl = true
# http.verify_mode = OpenSSL::SSL::VERIFY_NONE

# request = Net::HTTP::Get.new(url)
# request["x-rapidapi-host"] = 'skyscanner-skyscanner-flight-search-v1.p.rapidapi.com'
# request["x-rapidapi-key"] = 'e1cdf5f0e0mshde71621b569eda5p1bb99cjsn988de04b7910'

# response = http.request(request)
# response.read_body

# rm_array = JSON.parse(response.read_body)
# # puts rm_array["Quotes"]
# rm_array["Quotes"].each do |quote|
#     # byebug
#     Quote.create(
#         min_price: quote["MinPrice"],
#         direct: quote["Direct"],
#         outbound_carrier_id: quote["OutboundLeg"]["CarrierIds"],
#         outbound_origin_id: quote["OutboundLeg"]["OriginId"],
#         outbound_destination_id: quote["OutboundLeg"]["DestinationId"],
#         outbound_departure_date: quote["OutboundLeg"]["DepartureDate"],
#         quote_datetime: quote["QuoteDateTime"]
#     )
# end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

# Examples:

#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# start_time = Time.now
# puts 'Destroying airlines...'
# Airline.destroy_all
# puts 'Destroying cities...'
# City.destroy_all
# puts 'Destroying countries...'
# Country.destroy_all
# puts 'Destroying users...'
# User.destroy_all

# ###################################################################################
# AIRLINES
# ###################################################################################

# AIRLINE LOGOS:

# In the front end, airline logo link will be:
#     Small Logo: `https://www.gstatic.com/flights/airline_logos/32px/}${airline.iata}.png`
#     Larger Logo: `https://www.gstatic.com/flights/airline_logos/70px/${airline.iata}.png`

airline_templates = [
    {iata: "AA", name: "American Airlines"},
    {iata: "2G", name: "CargoItalia"},
    {iata: "CO", name: "Continental Airlines"},
    {iata: "DL", name: "Delta Air Lines"},
    {iata: "NW", name: "Northwest Airlines"},
    {iata: "AC", name: "Air Canada"},
    {iata: "UA", name: "United Airlines Cargo"},
    {iata: "CP", name: "Canadian Airlines Int´l"},
    {iata: "LH", name: "Lufthansa Cargo AG"},
    {iata: "FX", name: "Fedex"},
    {iata: "AS", name: "Alaska Airlines"},
    {iata: "US", name: "USAirways"},
    {iata: "RG", name: "VARIG Brazilian Airlines"},
    {iata: "KA", name: "Dragonair"},
    {iata: "LA", name: "LAN Chile"},
    {iata: "TP", name: "TAP Air Portugal"},
    {iata: "CY", name: "Cyprus Airways"},
    {iata: "OA", name: "Olympic Airways"},
    {iata: "EI", name: "Aer Lingus Cargo"},
    {iata: "AZ", name: "Alitalia"},
    {iata: "AF", name: "Air France"},
    {iata: "IC", name: "Indian Airlines"},
    {iata: "HM", name: "Air Seychelles"},
    {iata: "OK", name: "Czech Airlines"},
    {iata: "SV", name: "Saudi Arabian Airlines"},
    {iata: "RB", name: "Syrian Arab Airlines"},
    {iata: "ET", name: "Ethiopian Airlines"},
    {iata: "GF", name: "Gulf Air"},
    {iata: "KL", name: "KLM Cargo"},
    {iata: "IB", name: "Iberia"},
    {iata: "ME", name: "Middle East Airlines"},
    {iata: "MS", name: "Egyptair"},
    {iata: "PR", name: "Philippine Airlines"},
    {iata: "AF", name: "Air France"},
    {iata: "LO", name: "LOT Polish Airlines"},
    {iata: "QF", name: "Qantas Airways"},
    {iata: "SN", name: "Brussels Airlines"},
    {iata: "SA", name: "South African Airways"},
    {iata: "NZ", name: "Air New Zealand"},
    {iata: "IT", name: "Kingfisher Airlines"},
    {iata: "KD", name: "KD Avia"},
    {iata: "IR", name: "Iran Air"},
    {iata: "AI", name: "Air India"},
    {iata: "AY", name: "Finnair"},
    {iata: "BW", name: "Caribbean Airlines"},
    {iata: "FI", name: "Icelandair"},
    {iata: "CK", name: "China Cargo Airlines"},
    {iata: "LY", name: "EL AL"},
    {iata: "JU", name: "JAT Airways"},
    {iata: "SK", name: "SAS-Scandinavian Airlines System"},
    {iata: "DT", name: "TAAG Angola Airlines"},
    {iata: "LM", name: "Air ALM"},
    {iata: "AH", name: "Air Algerie"},
    {iata: "BA", name: "British Airways"},
    {iata: "GA", name: "Garuda Indonesia"},
    {iata: "MP", name: "Martinair Cargo"},
    {iata: "JL", name: "Japan Airlines"},
    {iata: "LR", name: "LACSA Airlines of Costa Rica"},
    {iata: "AM", name: "Aeromexico Cargo"},
    {iata: "LI", name: "LIAT Airlines"},
    {iata: "AT", name: "Royal Air Maroc"},
    {iata: "LN", name: "Libyan Airlines"},
    {iata: "QR", name: "Qatar Airways"},
    {iata: "CX", name: "Cathay Pacific Airways"},
    {iata: "3V", name: "TNT Airways"},
    {iata: "JP", name: "Adria Airways"},
    {iata: "CV", name: "Cargolux Airlines"},
    {iata: "EK", name: "Emirates"},
    {iata: "KE", name: "Korean Air"},
    {iata: "MA", name: "Malev Hungarian Airlines"},
    {iata: "RG", name: "VARIG Brazilian Airlines"},
    {iata: "JI", name: "Jade Cargo International"},
    {iata: "JM", name: "Air Jamaica"},
    {iata: "TA", name: "TACA"},
    {iata: "NH", name: "ANA All Nippon Cargo"},
    {iata: "PK", name: "Pakistan Int´l Airlines"},
    {iata: "TG", name: "Thai Airways"},
    {iata: "KU", name: "Kuwait Airways"},
    {iata: "CM", name: "Copa Airlines Cargo"},
    {iata: "NG", name: "Lauda Air"},
    {iata: "MH", name: "Malaysian Airline System"},
    {iata: "MH", name: "Homepage"},
    {iata: "JD", name: "Japan Air System"},
    {iata: "TK", name: "Turkish Airlines"},
    {iata: "BD", name: "British Midland Airways"},
    {iata: "MK", name: "Air Mauritius"},
    {iata: "OS", name: "Austrian Cargo"},
    {iata: "MD", name: "Air Madagascar"},
    {iata: "EF", name: "Far Eastern Air Transport"},
    {iata: "LT", name: "LTU (Leisure Cargo)"},
    {iata: "TL", name: "Trans Mediterranean Airways"},
    {iata: "K4", name: "Kalitta Air"},
    {iata: "LD", name: "Air Hong Kong"},
    {iata: "CI", name: "China Airlines"},
    {iata: "5S", name: "Global Aviation and Services"},
    {iata: "OO", name: "Sky West Airlines"},
    {iata: "WE", name: "Centurion Air Cargo"},
    {iata: "SC", name: "Shandong Airlines (Chinese)"},
    {iata: "RF", name: "Florida West International Airways"},
    {iata: "NC", name: "Northern Air Cargo"},
    {iata: "C8", name: "Cargolux Italia"},
    {iata: "5Y", name: "Atlas Air"},
    {iata: "KX", name: "Cayman Airways"},
    {iata: "A3", name: "Aegean Airlines"},
    {iata: "PO", name: "Polar Air Cargo"},
    {iata: "JW", name: "Arrow Air"},
    {iata: "5X", name: "UPS Air Cargo"},
    {iata: "N8", name: "National Air Cargo"},
    {iata: "S7", name: "Siberia Airlines"},
    {iata: "ER", name: "DHL Aviation/DHL Airways"},
    {iata: "KC", name: "Air Astana"},
    {iata: "ZH", name: "Shenzhen Airlines (Chinese)"},
    {iata: "SU", name: "Aeroflot"},
    {iata: "RJ", name: "Royal Jordanian"},
    {iata: "WN", name: "Southwest Airlines"},
    {iata: "A2", name: "Cielos Airlines"},
    {iata: "M3", name: "ABSA Aerolinhas Brasileiras"},
    {iata: "M2", name: "Mario’s Air"},
    {iata: "XQ", name: "Sun Express"},
    {iata: "PS", name: "Ukraine Int´l Airlines"},
    {iata: "9U", name: "Air Moldova"},
    {iata: "7C", name: "Coyne Airways"},
    {iata: "RU", name: "AirBridge Cargo"},
    {iata: "9W", name: "Jet Airways"},
    {iata: "UL", name: "SriLankan Cargo"},
    {iata: "UL", name: "more AWB tracking"},
    {iata: "UY", name: "Cameroon Airlines"},
    {iata: "EY", name: "ETIHAD Airways"},
    {iata: "QY", name: "DHL Aviation / European Air Transport"},
    {iata: "SQ", name: "Singapore Airlines"},
    {iata: "FB", name: "Bulgaria Air"},
    {iata: "GL", name: "Air Greenland"},
    {iata: "IY", name: "Yemenia Yemen Airways"},
    {iata: "KM", name: "Air Malta"},
    {iata: "PX", name: "Air Niugini"},
    {iata: "BT", name: "Air Baltic"},
    {iata: "BI", name: "Royal Brunei Airlines"},
    {iata: "NX", name: "Air Macau"},
    {iata: "BR", name: "Eva Airways"},
    {iata: "5C", name: "CAL Cargo Air Lines"},
    {iata: "KQ", name: "Kenya Airways"},
    {iata: "MB", name: "MNG Airlines"},
    {iata: "LX", name: "Swiss"},
    {iata: "QT", name: "Tampa Airlines"},
    {iata: "MF", name: "Xiamen Airlines"},
    {iata: "SP", name: "SATA Air Acores"},
    {iata: "VN", name: "Vietnam Airlines"},
    {iata: "SM", name: "Avient"},
    {iata: "J2", name: "Azerbaijan Airlines"},
    {iata: "FM", name: "Shanghai Airlines"},
    {iata: "MU", name: "China Eastern Airlines"},
    {iata: "CZ", name: "China Southern Airlines"},
    {iata: "GD", name: "Grandstar Cargo"},
    {iata: "AE", name: "Mandarin Airlines"},
    {iata: "M6", name: "Amerijet International"},
    {iata: "S6", name: "SAC South American Airways"},
    {iata: "F4", name: "Shanghai Airlines Cargo"},
    {iata: "OU", name: "Croatia Airlines"},
    {iata: "N8", name: "Hong Kong Airlines"},
    {iata: "FK", name: "Africa West"},
    {iata: "EV", name: "Atlantic Southeast Airlines"},
    {iata: "MY", name: "MASAir"},
    {iata: "VV", name: "Aerosvit"},
    {iata: "Y8", name: "Yangtze River Express Airlines"},
    {iata: "6R", name: "AeroUnion"},
    {iata: "3U", name: "Sichuan Airlines"},
    {iata: "HU", name: "Hainan Airlines"},
    {iata: "DE", name: "Condor Flugdienst"},
    {iata: "OH", name: "Comair"},
    {iata: "B1", name: "TAB Cargo"},
    {iata: "QN", name: "Air Armenia"},
    {iata: "UZ", name: "Buraq Air Transport"},
    {iata: "VS", name: "Virgin Atlantic"},
    {iata: "KZ", name: "Nippon Cargo Airlines"},
    {iata: "JJ", name: "TAM Brazilian Airlines"},
    {iata: "7I", name: "Insel Air Cargo"},
    {iata: "OV", name: "Estonian Air"},
    {iata: "QO", name: "Aeromexpress Cargo"},
    {iata: "OZ", name: "Asiana Airlines"},
    {iata: "IJ", name: "Great Wall Airlines"},
    {iata: "UX", name: "Air Europa Cargo"},
    {iata: "BG", name: "Biman Bangladesh"},
    {iata: "CA", name: "Air China"}
]

# puts 'Creating airlines...'
# airline_templates.each do |airline|
#     Airline.create(name: airline[:name], iata: airline[:iata])
# end

####################################################################################
# CITIES AND COUNTRIES
####################################################################################

city_images = [
    {
        name: "New York City", 
        image: "https://images.unsplash.com/photo-1470219556762-1771e7f9427d"
    },
    {
        name: "Miami", 
        image: "https://images.unsplash.com/photo-1506966953602-c20cc11f75e3"
    },
    {
        name: "Las Vegas", 
        image: "https://images.unsplash.com/photo-1508768022758-cb7384c00335"
    },
    {
        name: "Los Angeles", 
        image: "https://images.unsplash.com/photo-1506190503914-c7c7a69d4ce5"
    },
    {
        name: "Cancun", 
        image: "https://images.unsplash.com/photo-1510097467424-192d713fd8b2"
    },
    {
        name: "Orlando", 
        image: "https://images.unsplash.com/photo-1455906876003-298dd8c44ec8"
    },
    {
        name: "Toronto", 
        image: "https://images.unsplash.com/photo-1535776142635-8fa180c46af7"
    },
    {
        name: "Vancouver", 
        image: "https://images.unsplash.com/photo-1559511260-66a654ae982a"
    },
    {
        name: "San Francisco", 
        image: "https://images.unsplash.com/photo-1547190994-0dfe4ab1bdae"
    },
    {
        name: "Honolulu", 
        image: "https://images.unsplash.com/photo-1524565308556-b777381b2f73"
    },
    {
        name: "Mexico City", 
        image: "https://images.unsplash.com/photo-1518659526054-190340b32735"
    },
    {
        name: "Punta Cana", 
        image: "https://images.unsplash.com/photo-1534612899740-55c821a90129"
    },
    {
        name: "Montreal", 
        image: "https://images.unsplash.com/photo-1553882673-b02ffbdc3036"
    },
    {
        name: "Washington D.C.", 
        image: "https://images.unsplash.com/photo-1463839346397-8e9946845e6d"
    },
    {
        name: "Chicago", 
        image: "https://images.unsplash.com/photo-1494522855154-9297ac14b55f"
    },
    {
        name: "Boston", 
        image: "https://images.unsplash.com/photo-1531874668635-85a25b7279a2"
    },
    {
        name: "Houston", 
        image: "https://images.unsplash.com/photo-1530089711124-9ca31fb9e863"
    },
    {
        name: "Atlanta", 
        image: "https://images.unsplash.com/photo-1545408116-e04deb094a6e"
    },
    {
        name: "Philadelphia", 
        image: "https://images.unsplash.com/photo-1569761316261-9a8696fa2ca3"
    },
    {
        name: "San Diego", 
        image: "https://images.unsplash.com/photo-1558530933-4eadc70718f1"
    },
    {
        name: "Seattle", 
        image: "https://images.unsplash.com/photo-1502175353174-a7a70e73b362"
    },
    {
        name: "New Orleans", 
        image: "https://images.unsplash.com/photo-1549965738-e1aaf1168943"
    },


    {
        name: "London", 
        image: "https://images.unsplash.com/photo-1503780099440-e6ab046a1d71"
    },
    {
        name: "Paris", 
        image: "https://images.unsplash.com/photo-1522093007474-d86e9bf7ba6f"
    },
    {
        name: "Istanbul", 
        image: "https://images.unsplash.com/photo-1524231757912-21f4fe3a7200"
    },
    {
        name: "Antalya", 
        image: "https://images.unsplash.com/photo-1576004509239-b2d8b2d3c266"
    },
    {
        name: "Rome", 
        image: "https://images.unsplash.com/photo-1529260830199-42c24126f198"
    },
    {
        name: "Prague", 
        image: "https://images.unsplash.com/photo-1519677100203-a0e668c92439"
    },
    {
        name: "Amsterdam", 
        image: "https://images.unsplash.com/photo-1468436385273-8abca6dfd8d3"
    },
    {
        name: "Barcelona", 
        image: "https://images.unsplash.com/photo-1523531294919-4bcd7c65e216"
    },
    {
        name: "Milan", 
        image: "https://images.unsplash.com/photo-1515329060981-428a461b46df"
    },
    {
        name: "Vienna", 
        image: "https://images.unsplash.com/photo-1555242354-90933d7da551"
    },
    {
        name: "Berlin", 
        image: "https://images.unsplash.com/photo-1559564484-e48b3e040ff4"
    },
    {
        name: "Athens", 
        image: "https://images.unsplash.com/photo-1504115582042-a7c0f7d29cd6"
    },
    {
        name: "Moscow", 
        image: "https://images.unsplash.com/photo-1523509433743-6f42a58221df"
    },
    {
        name: "Venice", 
        image: "https://images.unsplash.com/photo-1534113414509-0eec2bfb493f"
    },
    {
        name: "Madrid", 
        image: "https://images.unsplash.com/photo-1543785734-4b6e564642f8"
    },
    {
        name: "Dublin", 
        image: "https://images.unsplash.com/photo-1518005068251-37900150dfca"
    },
    {
        name: "Florence", 
        image: "https://images.unsplash.com/photo-1528114039593-4366cc08227d"
    },
    {
        name: "Munich", 
        image: "https://images.unsplash.com/photo-1526995609411-c8af4e2873af"
    },
    {
        name: "Saint Petersburg", 
        image: "https://images.unsplash.com/photo-1556543697-b40fdaadca4d"
    },
    {
        name: "Brussels", 
        image: "https://images.unsplash.com/photo-1570048488549-7b7f210275ee"
    },
    {
        name: "Budapest", 
        image: "https://images.unsplash.com/photo-1549877452-9c387954fbc2"
    },
    {
        name: "Lisbon", 
        image: "https://images.unsplash.com/photo-1501927023255-9063be98970c"
    },
    {
        name: "Heraklion", 
        image: "https://images.unsplash.com/photo-1486575008575-27670acb58db"
    },
    {
        name: "Copenhagen", 
        image: "https://images.unsplash.com/photo-1561113500-8f4ad4f80a93"
    },
    {
        name: "Warsaw", 
        image: "https://images.unsplash.com/photo-1577133192629-5140c5371590"
    },
    {
        name: "Krakow", 
        image: "https://images.unsplash.com/photo-1495181941197-70a606546974"
    },
    {
        name: "Frankfurt", 
        image: "https://images.unsplash.com/photo-1577185816322-21f2a92b1342"
    },
    {
        name: "Stockholm", 
        image: "https://images.unsplash.com/photo-1509356843151-3e7d96241e11"
    },
    {
        name: "Nice", 
        image: "https://images.unsplash.com/photo-1530277278144-37919572ffd6"
    },
    {
        name: "Porto", 
        image: "https://images.unsplash.com/photo-1555881400-74d7acaacd8b"
    },
    {
        name: "Rhodes", 
        image: "https://images.unsplash.com/photo-1527108097555-a5c5e36f3dd0"
    },
    {
        name: "Hamburg", 
        image: "https://images.unsplash.com/photo-1422360902398-0a91ff2c1a1f"
    },



    {
        name: "Hong Kong", 
        image: "https://images.unsplash.com/photo-1532455935509-eb76842cee50"
    }, 
    {
        name: "Bangkok", 
        image: "https://images.unsplash.com/photo-1528181304800-259b08848526"
    },
    {
        name: "Macau", 
        image: "https://images.unsplash.com/photo-1549166533-03a26a4330ba"
    },
    {
        name: "Singapore", 
        image: "https://images.unsplash.com/photo-1525625293386-3f8f99389edd"
    },
    {
        name: "Dubai", 
        image: "https://images.unsplash.com/photo-1528702748617-c64d49f918af"
    },
    {
        name: "Kuala Lumpur", 
        image: "https://images.unsplash.com/photo-1562500230-e8118afa1294"
    },
    {
        name: "Delhi", 
        image: "https://images.unsplash.com/photo-1515091943-9d5c0ad475af"
    },
    {
        name: "Shenzhen", 
        image: "https://images.unsplash.com/photo-1522614288668-a697127e9b21"
    },
    {
        name: "Mumbai", 
        image: "https://images.unsplash.com/photo-1573143950521-36ef5345dae9"
    },
    {
        name: "Phuket", 
        image: "https://images.unsplash.com/photo-1558299991-d22a9ef51611"
    },
    {
        name: "Tokyo", 
        image: "https://images.unsplash.com/photo-1540959733332-eab4deabeeaf"
    },
    {
        name: "Pattaya", 
        image: "https://images.unsplash.com/photo-1578367507788-a6f03f53aa94"
    },
    {
        name: "Taipei", 
        image: "https://images.unsplash.com/photo-1512874876683-3bb985ca85c9"
    },
    {
        name: "Mecca", 
        image: "https://images.unsplash.com/photo-1540871112484-09beaca00ec2"
    },
    {
        name: "Medina", 
        image: "https://images.unsplash.com/photo-1540866225557-9e4c58100c67"
    },
    {
        name: "Seoul", 
        image: "https://images.unsplash.com/photo-1535189043414-47a3c49a0bed"
    },
    {
        name: "Agra", 
        image: "https://images.unsplash.com/photo-1515004207928-a22c7f92c249"
    },
    {
        name: "Osaka", 
        image: "https://images.unsplash.com/photo-1551278244-a9a4db7d811f"
    },
    {
        name: "Shanghai", 
        image: "https://images.unsplash.com/photo-1538428494232-9c0d8a3ab403"
    },
    {
        name: "Ho Chi Minh City", 
        image: "https://images.unsplash.com/photo-1548296999-06ba2bbaccf8"
    },
    {
        name: "Denpasar", 
        image: "https://images.unsplash.com/photo-1543055932-84b75bfd3a77"
    },
    {
        name: "Jaipur", 
        image: "https://images.unsplash.com/photo-1505977003557-c907eece08e3"
    },
    {
        name: "Ha Long", 
        image: "https://images.unsplash.com/photo-1553052037-eb1fa8d3b1ce"
    },
    {
        name: "Hanoi", 
        image: "https://images.unsplash.com/photo-1458013356865-f7ea608ed9a6"
    },
    {
        name: "Sydney", 
        image: "https://images.unsplash.com/photo-1524293581917-878a6d017c71"
    },
    {
        name: "Jakarta", 
        image: "https://images.unsplash.com/photo-1555333145-4acf190da336"
    },
    {
        name: "Beijing", 
        image: "https://images.unsplash.com/photo-1547981609-4b6bfe67ca0b"
    },
    {
        name: "Jerusalem", 
        image: "https://images.unsplash.com/photo-1542743408-218cc173cda0"
    },
    {
        name: "Dammam", 
        image: "https://images.unsplash.com/photo-1578895101408-1a36b834405b"
    },
    {
        name: "Penang Island", 
        image: "https://images.unsplash.com/photo-1581258464836-c8a75b2ed430"
    },
    {
        name: "Kyoto", 
        image: "https://images.unsplash.com/photo-1493976040374-85c8e12f0c0e"
    },
    {
        name: "Zhuhai", 
        image: "https://images.unsplash.com/photo-1568947577887-1bcb41962122"
    },
    {
        name: "Chiang Mai", 
        image: "https://images.unsplash.com/photo-1512553353614-82a7370096dc"
    },
    {
        name: "Melbourne", 
        image: "https://images.unsplash.com/photo-1545044846-351ba102b6d5"
    },
    {
        name: "Kolkata", 
        image: "https://images.unsplash.com/photo-1496372412473-e8548ffd82bc"
    },
    {
        name: "Cebu City", 
        image: "https://images.unsplash.com/photo-1505261476952-32e25cbfc755"
    },
    {
        name: "Auckland", 
        image: "https://images.unsplash.com/photo-1507699622108-4be3abd695ad"
    },
    {
        name: "Tel Aviv", 
        image: "https://images.unsplash.com/photo-1518728242875-50600dfbe31a"
    },
    {
        name: "Guilin", 
        image: "https://images.unsplash.com/photo-1508043157312-69e4bf3dd28c"
    },
    {
        name: "Chiba", 
        image: "https://images.unsplash.com/photo-1574537898696-61ad58f4810f"
    },
    {
        name: "Da Nang", 
        image: "https://images.unsplash.com/photo-1559592413-7cec4d0cae2b"
    },
    {
        name: "Fukuoka", 
        image: "https://images.unsplash.com/photo-1575862924838-c166e3814df7"
    },
    {
        name: "Abu Dhabi", 
        image: "https://images.unsplash.com/photo-1512971064777-efe44a486ae0"
    },
    {
        name: "Jeju", 
        image: "https://images.unsplash.com/photo-1579282276647-5ba2566d5914"
    },
    {
        name: "Krabi", 
        image: "https://images.unsplash.com/photo-1581229553161-11a6b2a7fbb9"
    },
    {
        name: "Bangalore", 
        image: "https://images.unsplash.com/photo-1544588440-fc7551331160"
    },
    {
        name: "Manila", 
        image: "https://images.unsplash.com/photo-1555557356-51c5d7a8f4c2"
    },


    {
        name: "Cairo", 
        image: "https://images.unsplash.com/photo-1572252009286-268acec5ca0a"
    },
    {
        name: "Johannesburg", 
        image: "https://images.unsplash.com/photo-1577948000111-9c970dfe3743"
    },
    {
        name: "Marrakesh", 
        image: "https://images.unsplash.com/photo-1531230689007-0b32d7a7c33e"
    },
    {
        name: "Hurghada", 
        image: "https://images.unsplash.com/photo-1562679300-60018575a875"
    },
    {
        name: "Accra", 
        image: "https://images.unsplash.com/photo-1579054633799-fcbd9319625c"
    },
    {
        name: "Casablanca", 
        image: "https://images.unsplash.com/photo-1581443459255-e895f2a4222f"
    },
    {
        name: "Cape Town", 
        image: "https://images.unsplash.com/photo-1522576775862-7168ae29372c"
    },


    {
        name: "Buenos Aires", 
        image: "https://images.unsplash.com/photo-1521058798685-39dd95c33314"
    },
    {
        name: "Rio de Janeiro", 
        image: "https://images.unsplash.com/photo-1483729558449-99ef09a8c325"
    },
    {
        name: "Lima", 
        image: "https://images.unsplash.com/photo-1568805647297-df963b524678"
    },
    {
        name: "Sao Paolo", 
        image: "https://images.unsplash.com/photo-1545145940-f6419b5512d1"
    },
    {
        name: "Bogota", 
        image: "https://images.unsplash.com/photo-1568632234157-ce7aecd03d0d"
    },
    {
        name: "Quito", 
        image: "https://images.unsplash.com/photo-1523911994826-b13e77719144"
    }


]

File.open('./seed_data/cities_by_country.rb', 'r') do |file| 
    puts file.read
    # file.read.each do |country|
    #     puts "Creating country and cities for #{country[0]}..."
    #     new_country = Country.create(name: country[0], image: "")
    #     i = -1
    #     country[1].each do |city|
    #         if country[1][i] && country[1][i] != country[1][i + 1]
    #             City.create(name: city, image: "", country_id: new_country.id)
    #         end
    #         i += 1
    #     end
    # end
end

# puts 'Adding images to the top cities...'
# city_images.each do |city|
#     found_city = City.where(name: city[:name])
#     found_city.update(image: city[:image])
# end

# puts "Seeds run time: #{Time.now - start_time}"

# For airports: pull from the csv file. only do large and medium airports. refer to test version which I think pulled data from the same file.