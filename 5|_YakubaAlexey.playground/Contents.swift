import UIKit

enum windows{
    case open
    case closed
}
enum engine{
    case on
    case off
}
enum luggage{
    case trunkIsFull
    case TrunkIsEmpty
}
protocol Car {
    var brand: String {get}
    var release: Int {get}
    var engineState: engine {get set}
    var windowsState: windows {get set}
}
extension Car {
    mutating func changeEngineState(engineState: engine){
        self.engineState = engineState
    }
    mutating func chageWindowsState(windowsState: windows){
        self.windowsState = windowsState
    }
}
class settingsCar: Car{
    var brand: String
    var release: Int
    var engineState: engine = .off
    var windowsState: windows = .closed
    init(brand: String, release: Int) {
        self.brand = brand
        self.release = release
    }
}
class sportCar: settingsCar, CustomStringConvertible{
    var description: String{
        return "engine is \(engineState), windows is \(windowsState), release date is \(release)"
    }
}
class trunkCar: settingsCar, CustomStringConvertible{
    var trunkState: luggage = .TrunkIsEmpty
    var description: String{
        return "engine is \(engineState), windows is \(windowsState), trunk is \(trunkState), release date is \(release)"
    }
}
var kia = sportCar(brand: "KIA", release: 2020)
var man = trunkCar(brand: "MAN", release: 2012)
kia.changeEngineState(engineState: .on)
man.chageWindowsState(windowsState: .open)
man.trunkState = .trunkIsFull
print(kia.description)
print(man.description)
