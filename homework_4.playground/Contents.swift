import UIKit

enum Attack {
    case off
    case on
}

class StarCraft {
    var power: Int
    var speed: Int
    var fire: Attack
    var alive: Int
    
    init(power: Int, speed: Int, alive: Int, fire: Attack) {
        self.power = power
        self.speed = speed
        self.fire = fire
        self.alive = alive
        
        StarCraft.unit += 1
    }
    
    static var unit = 0
    static func allUnit(){
        print("Создано \(self.unit) юнитов ")
    }
    
    func war (fire: Attack){
        switch fire {
           case.on:
               self.fire = .on
               print("В атаку!")
           case.off:
               self.fire = .off
               print("Отступаем!")
           }
       }
    
}


class Teran: StarCraft {
    var jump: Bool
    init(power: Int, speed: Int, alive: Int,fire: Attack, jump: Bool) {
        self.jump = jump
        super.init(power: power, speed: speed, alive: alive, fire: fire)
    }
    
    override func war(fire: Attack) {
        super.war(fire: fire)
    }
   
}




class Zerg: StarCraft {
    var buryUnderground: Bool
    init(power: Int, speed: Int, alive: Int, fire: Attack, buryUnderground: Bool) {
        self.buryUnderground = buryUnderground
        super.init(power: power, speed: speed, alive: alive, fire: fire)
    }
    override func war(fire: Attack) {
        super.war(fire: fire)
        
    }
}
    


var zerg1 = Zerg(power: 10, speed: 7, alive: 100, fire: .off, buryUnderground: false)
var teran1 = Teran(power: 11, speed: 6, alive: 100, fire: .off, jump: false)


StarCraft.allUnit()
zerg1.war(fire: .on)
teran1.jump = true

print("zerg", zerg1.power, zerg1.speed, zerg1.alive, zerg1.fire, zerg1.buryUnderground)
print("teran", teran1.power, teran1.speed, teran1.alive, teran1.fire, teran1.jump)

