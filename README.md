# Flight Finder API

### *Note: This is the Flight Finder back end repo. The front end repo can be found [here](https://github.com/BenMiriello/flight-finder).*

## Usage and Features

Search for flights and view the cheapest offers and the latest price.

* Customize search by selecting: one-way, non-stop only, preferred class, number of passengers.
* Filter results by airline.
* View results in condensed and expanded formats with detailed information for each leg of the flight.
* Save and review flights in secure user account.

## Built With

**Back End** Rails, Bcrypt, JWT, Spawnling, Amadeus Travel API

**[Front End:](https://github.com/BenMiriello/flight-finder):** React, Redux, Thunk, Semantic UI React, [Cometari Airport Finder API](https://www.cometari.com/applications/airport-finder).

## Demo

A video demo of Flight Finder is available on [YouTube](https://youtu.be/Px8IAOQFDKc).

![](demos/flight-finder-clip.gif)

## Backend Installation Overview

* Open PostgreSQL.
* Run the command: 

```
rails db:create && rails db:migrate && rails db:seed && rails s
```

## Troubleshooting

If Rails can't connect with DB, has issues with env files, and is running spring, try running: 

```
spring stop
```

If byebug is placed inside a Spawnling thread (in the queries_controller), server issues can arise. To fully reset the server, run:

```
sudo kill -9 $(lsof -i :3000 -t)
```

<br><br>
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)