
class Ship {
    var name: String
    var year: Int
    var countryOfOrigin: String
    
    init (name: String, year: Int, countryOfOrigin: String ) {
        self.name = name
        self.year = year
        self.countryOfOrigin = countryOfOrigin
    }
}

class CruiseShip: Ship {
    var maxCapacity: Int
    var oceanOfOperation: String
    var currentPassengerCount: Int
    
    init (name: String, year: Int, countryOfOrigin: String, maxCapacity: Int, oceanOfOperation: String, currentPassengerCount: Int) {
        self.maxCapacity = maxCapacity
        self.oceanOfOperation = oceanOfOperation
        self.currentPassengerCount = currentPassengerCount
        super.init(name: name, year: year, countryOfOrigin: countryOfOrigin)
    }

    func addingPassenger() {
        if currentPassengerCount < maxCapacity {
            currentPassengerCount += 1
            print("The Cruise Ship is still available for passenger.")
        } else {
            print("The Cruise Ship maximum capacity for passenger is \(maxCapacity) only...!")
        }
    }

func printCurrentPassengerCount() {
        print("The current passenger count is:",  currentPassengerCount )
    }
    
}

class CargoShip: Ship {
    var maxCargoCapacity: Int
    var currentCargoCount: Int
    var isInternational: Bool
        
    init(name: String, year: Int, countryOfOrigin: String, maxCargoCapacity: Int, currentCargoCount: Int, isInternational: Bool) {
        self.maxCargoCapacity = maxCargoCapacity
        self.currentCargoCount = currentCargoCount
        self.isInternational = isInternational
        super.init(name: name, year: year, countryOfOrigin: countryOfOrigin)
    }
    
    func addingCargo() {
        if currentCargoCount < maxCargoCapacity {
            currentCargoCount += 1
            print("The Cargo Ship is still available for cargo.")
        } else {
            print("The maximum cargo capacity is \(maxCargoCapacity) only...!")
        }
    }
    
    func printCargoCount() {
        print("The current cargo count is :", currentCargoCount)
    }
}

class PirateShip: Ship {
    var maxTreasureCapacity: Int
    var currentTreasureCount: Int
    var numberOfCannons: Int
    
    init(name: String, year: Int, countryOfOrigin: String, maxTreasureCapacity: Int, numberOfCannons: Int, currentTreasureCount: Int) {
        self.maxTreasureCapacity = maxTreasureCapacity
        self.numberOfCannons = numberOfCannons
        self.currentTreasureCount = currentTreasureCount
        super.init(name: name, year: year, countryOfOrigin: countryOfOrigin)
    }
    
    func addingTreasure() {
        if currentTreasureCount < maxTreasureCapacity {
            currentTreasureCount += numberOfCannons
            print("The Treasure is added to the Pirate Ship.")
        } else {
            print("The maximum Treasure capacity is \(maxTreasureCapacity) only...!")
        }
    }
    
    func printTreasureCount() {
        print("The current treasure count is:", currentTreasureCount)
    }
}

var cruiseShip = CruiseShip(name: "Pearl of the Orient", year: 1987, countryOfOrigin: "Philippines", maxCapacity: 2000,  oceanOfOperation: "Pacific Ocean", currentPassengerCount: 205)
var cargoShip = CargoShip(name: "Emma Maersk", year: 1980, countryOfOrigin: "Denmark", maxCargoCapacity: 5000, currentCargoCount: 500, isInternational: true)
var pirateShip = PirateShip(name: "Adventure Gally", year: 1941, countryOfOrigin: "Scotland", maxTreasureCapacity: 1500, numberOfCannons: 300, currentTreasureCount: 1000)

cruiseShip.addingPassenger()
cruiseShip.printCurrentPassengerCount()
print("""
        Ship name:          \(cruiseShip.name)
        Year:               \(cruiseShip.year)
        Country of Origin:  \(cruiseShip.countryOfOrigin)
        Max Capacity:       \(cruiseShip.maxCapacity)
        Ocean of Operation: \(cruiseShip.oceanOfOperation)
        
    """)


cargoShip.addingCargo()
cargoShip.printCargoCount()
print ("""
        Ship name:          \(cargoShip.name)
        Year:               \(cargoShip.year)
        Country of Origin:  \(cargoShip.countryOfOrigin)
        Max Capacity:       \(cargoShip.maxCargoCapacity)
        isInternational:    \(cargoShip.isInternational)
    
    """)

pirateShip.addingTreasure()
pirateShip.printTreasureCount()
print ("""
        Ship name:          \(pirateShip.name)
        Year:               \(pirateShip.year)
        Country of Origin:  \(pirateShip.countryOfOrigin)
        Max Capacity:       \(pirateShip.maxTreasureCapacity)
        numberOfCannons:    \(pirateShip.numberOfCannons)
    """)
