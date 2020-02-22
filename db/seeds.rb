require 'json'
sample_response_1_file = File.open('db/amadeus_test/sample_response_1.rb', 'r')
sample_response_1 = JSON.parse(sample_response_1_file.read)

data = sample_response_1["data"]
dictionaries = sample_response_1["dictionaries"]

n = 0
flight_offer_1 = data[n]

FlightOffer.create(
    xid: flight_offer_1["id"],
    gds: flight_offer_1["source"],
    instant_ticketing_required: flight_offer_1["instantTicketingRequired"],
    non_homogenous: flight_offer_1["nonHomogeneous"],
    one_way: flight_offer_1["oneWay"],
    last_ticketing_date: flight_offer_1["lastTicketingDate"],
    number_of_bookable_seats: flight_offer_1["numberOfBookableSeats"],
    currency_code: flight_offer_1["price"]["currency"], # currency_code
    currency: dictionaries["currencies"][flight_offer_1["price"]["currency"]], # currency
    price_total: flight_offer_1["price"]["total"],
    price_base: flight_offer_1["price"]["base"],
    price_fees: flight_offer_1["price"]["fees"].join(','), # extra info - save as string
    grand_total: flight_offer_1["price"]["grandTotal"],
    fare_type: flight_offer_1["pricingOptions"]["fareType"].join(","), # an array. there's just one in the example
    included_checked_bags_only: flight_offer_1["pricingOptions"]["includedCheckedBagsOnly"],
    validating_airline_codes: flight_offer_1["validatingAirlineCodes"].join(",") # just do first one. when reading can call ".split(",")" which will only split if there are multiple, or just get first 2 chars.
)

sample_response_1_file.close