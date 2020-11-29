import UIKit
enum Attack {
    case off, on
}
enum Ability {
    case activate, deactivate
}
protocol StarCraft {
    func War()
    var power: Int {get}
    //var speed: Int {get}
    //var alive: Int {get}
}
extension StarCraft {
    
    func war (fire: Attack){
        switch fire {
        case.on:
            print("В атаку!")
        case.off:
            print("Отступаем!")
               }
        }
}

class Teran: StarCraft {

    func War() {
    }
    var power: Int
    var jump: Ability
    init(power: Int, jump: Ability){
        self.power = power
        self.jump = jump
    }
}

class Zerg: StarCraft {

    func War() {
    }
    var power: Int
    var buryUnderground: Ability
    init(power: Int, buryUnderground: Ability){
        self.power = power
        self.buryUnderground = buryUnderground
    }
}




var teran = Teran(power: 10, jump: .deactivate)
var zerg = Zerg(power: 11, buryUnderground: .activate)
teran.war(fire: .on)
print("Teran", teran.jump, teran.power)
print("Zerg", zerg.buryUnderground, zerg.power)

