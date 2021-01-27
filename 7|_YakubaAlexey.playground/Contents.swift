import UIKit

enum AirplaneErros: Error{
    case engineIsOnFire
    case oxygenIsLow
}
class Airplane{
    var engine: Bool
    var oxygen: Int
    init(engine: Bool, oxygen: Int){
        self.engine = engine
        self.oxygen = oxygen
    }
    func oxygenState() throws{
        if oxygen < 10{
            throw AirplaneErros.oxygenIsLow
        }
    }
    func engineState() throws{
        if engine == false{
                throw AirplaneErros.engineIsOnFire
        }
    }
}
var discovery = Airplane(engine: false, oxygen: 1)
do{
   try discovery.oxygenState()
} catch AirplaneErros.oxygenIsLow{
    print("Oxygen is low")
}
do{
    try discovery.engineState()
} catch AirplaneErros.engineIsOnFire{
    print("The engine is on fire")
}
