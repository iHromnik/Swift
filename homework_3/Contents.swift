import UIKit
enum FrigeStatus {
    case empty, full
}
enum SleepStatus {
    case yes, no
}
enum FriendsAlive {
    case Dasha (drink: Int, eat: Int)
    case Sasha (drink: Int, eat: Int)
}
struct Room {
    var fridge: FrigeStatus
    var friends: FriendsAlive
    var beer: Int
    var chips: Int
    var sleep: SleepStatus
    
    mutating func bigPaty(friends: FriendsAlive) {
        func stile(){
            if self.beer > 0 {
                self.beer -= beer
            } else if self.beer <= 0 && self.fridge == .full {
                print("Пиво закончилось!!! Что там в холодильнике?!!")
                self.fridge = .empty
                self.beer += 4
            } else if self.beer <= 0 && self.fridge == .empty {
            print("Пиво закончилось, пора спать.")
                self.sleep = .yes
            }
            if self.chips > 0 {
                self.chips -= chips
            } else if self.chips <= 0 {
                print("Закусуа не еда, жрать нечего!")
            }
            
        }
        
        switch friends {
        case .Dasha(let beer, let chips):
        
            if self.beer > 0 {
                self.beer -= beer
            } else if self.beer <= 0 && self.fridge == .full {
                print("Пиво закончилось!!! Что там в холодильнике?!!")
                self.fridge = .empty
                self.beer += 4
            } else if self.beer <= 0 && self.fridge == .empty {
            print("Пиво закончилось, пора спать.")
                self.sleep = .yes
            }
            if self.chips > 0 {
                self.chips -= chips
            } else {
                print("Закуска закончилась!")
            }
        
        case .Sasha(let beer, let chips):
            if self.beer > 0 {
                self.beer -= beer
            } else if self.beer <= 0 && self.fridge == .full {
                print("Пиво закончилось!!! Что там в холодильнике?!!")
                self.fridge = .empty
                self.beer += 4
            } else if self.beer <= 0 && self.fridge == .empty {
            print("Пиво закончилось, пора спать.")
                self.sleep = .yes
            }
            if self.chips > 0 {
                self.chips -= chips
            } else  {
                print("Закуска закончилась!")
            }
        }
        self.desc()
    }
    
    
    func desc(){
        print(" Осталось: пива \(self.beer), ", "чипсов \(self.chips) ", "Холодильник \(self.fridge)", "Кровть занята? \(self.sleep)")
    }
}
var room = Room(fridge: .full, friends: .Dasha(drink: 0, eat: 0), beer: 4, chips: 4, sleep: .no)
room.desc()
room.bigPaty(friends: .Dasha(drink: 2, eat: 2))
room.bigPaty(friends: .Sasha(drink: 2, eat: 1))
room.bigPaty(friends: .Dasha(drink: 0, eat: 0))
room.bigPaty(friends: .Sasha(drink: 2, eat: 0))
room.bigPaty(friends: .Dasha(drink: 2, eat: 1))
room.bigPaty(friends: .Sasha(drink: 0, eat: 0))

