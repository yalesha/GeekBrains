import UIKit

enum enginePosition {
    case start, stop
}

enum AreWindowsOpen {
    case open, close
}
class Car {
    let color: UIColor
    let brand: String
    let numberOfDoors: Int
    let numberOfWheels: Int
    var engineState: enginePosition
    var windowsState: AreWindowsOpen

    init(color: UIColor, brand: String, numberOfDoors: Int, numberOfWheels: Int, engineState: enginePosition, windowsState: AreWindowsOpen) {
        self.color = color
        self.brand = brand
        self.numberOfDoors = numberOfDoors
        self.numberOfWheels = numberOfWheels
        self.engineState = engineState
        self.windowsState = windowsState
    }
    
    func openWindows() {
        windowsState = .open
        print("Closed doors")
    }
    func closetWindows(){
        windowsState = .close
    }
}

class sportCar: Car{
    var maxSpeed: Int
    init(maxSpeed: Int, color: UIColor, brand: String, numberOfDoors: Int, numberOfWheels: Int, engineState: enginePosition, windowsState: AreWindowsOpen){
        self.maxSpeed = maxSpeed
        super.init(color: color, brand: brand, numberOfDoors: numberOfDoors, numberOfWheels: numberOfWheels, engineState: engineState, windowsState: windowsState)
    }
    
    override func openWindows() {
        super.openWindows()
        print("Закройте, пожалуйста, окна!")
    }
}

class trunkCar: Car{
    var fillTrunk: Bool
    var heigtCabin: Double
    
    init(fillTrunk: Bool, heigtCabin: Double, color: UIColor, brand: String, numberOfDoors: Int, numberOfWheels: Int, engineState: enginePosition, windowsState: AreWindowsOpen){
        self.fillTrunk = fillTrunk
        self.heigtCabin = heigtCabin
        super.init(color: color, brand: brand, numberOfDoors: numberOfDoors, numberOfWheels: numberOfWheels, engineState: engineState, windowsState: windowsState)
    }
}
var car1 = sportCar(maxSpeed: 250, color: .black , brand: "BMW", numberOfDoors: 5, numberOfWheels: 4, engineState: .start, windowsState: .open)
print(car1.brand)
print(car1.windowsState)
print(car1.openWindows())
