import UIKit


enum enginePosition {
    case start, stop
}

enum AreWindowsOpen {
    case open, close
}

enum trunkState {
    case full, empty
}

struct SportCar {
    let brandCar : String
    var color : String
    mutating func changeColor(c:String) {
        switch c {
        case "purple":
            self.color = "purple"
        case "white":
            self.color = "white"
        case "black":
            self.color = "black"
        default:
            print("We have no such color.")
        }
    }
    let yearOfManufacture : Int
    var trunkVolume : Double {
        willSet {
            if (trunkState == .empty) && (trunkVolume > 0) && (trunkVolume != 0) && (newValue < trunkVolume) {
                let space = trunkVolume - newValue
                print ("\(brandCar) trunk free: \(space)")
            } else { print("\(brandCar) trunk is full.")}
        }
    }
    var enginePosition : enginePosition {
        willSet {
            if newValue == .start {
                print ("\(brandCar  ) engine is on")
            } else {print("\(brandCar) engine is off")}
        }
    }
    var AreWindowsOpen : AreWindowsOpen {
        willSet {
            if newValue == .open {
                print("\(brandCar) windows are open")
            } else { print("\(brandCar) windows are close") }
        }
    }
    var trunkState : trunkState
    mutating func emptyTrunck() {
        self.trunkState = .empty
        print ("\(brandCar) trunck is empty")
    }
}

struct TrunkCar {
    let brandTruck : String
    var color : String
    mutating func changeColor(c:String) {
        switch c {
        case "green":
            self.color = "green"
        case "black":
            self.color = "black"
        case "yellow":
            self.color = "yellow"
        default:
            print("Error.")
        }
    }
    let yearOfManufacture : Int
    var truckVolume : Double {
        willSet {
            if (trunkState == .empty) && (truckVolume > 0) && (truckVolume != 0) && (newValue < truckVolume) {
                let space = truckVolume - newValue
                print ("\(brandTruck) trunk free: \(space)")
            } else { print("\(brandTruck) trunk is full.")}
        }
    }
    var enginePosition : enginePosition {
        willSet {
            if newValue == .start {
                print ("\(brandTruck) engine is on")
            } else {print("\(brandTruck) engine is off")}
        }
    }
    var AreWindowsOpen : AreWindowsOpen {
        willSet {
            if newValue == .open {
                print("\(brandTruck) windows are open")
            } else { print("\(brandTruck) windows are close") }
        }
    }
    var trunkState : trunkState
    mutating func emptyTrunck() {
        self.trunkState = .empty
        print ("\(brandTruck) trunck is empty")
    }
}

var car1 = SportCar(brandCar: "Tesla",  color: "white", yearOfManufacture: 2016, trunkVolume: 580.0 , enginePosition: .stop, AreWindowsOpen: .open, trunkState: .empty)

var truck1 = TrunkCar(brandTruck: "Mercedes",  color: "green", yearOfManufacture: 2012, truckVolume: 100000.0, enginePosition: .start, AreWindowsOpen: .open, trunkState: .full)



car1.enginePosition = .start
car1.trunkVolume = 123
car1.changeColor(c: "red")
car1.AreWindowsOpen = .close


truck1.enginePosition = .stop
truck1.truckVolume = 9999
truck1.changeColor(c: "black")
truck1.AreWindowsOpen = .close



