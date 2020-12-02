import UIKit


enum Docktor {
    case psycholog, narcolog
}
protocol Hospital {
    var doctor: Docktor {get}
}

class Client: Hospital{
    var doctor: Docktor
    var name: String
    init(name: String, doctor: Docktor){
        self.name = name
        self.doctor = doctor
    }
}



struct Queue<T: Hospital> {
  private var elements: [T] = []

  mutating func push(_ value: T) {
    elements.append(value)
  }

  mutating func pop() -> T? {
    return elements.removeFirst()
  }
}

var queueClient = Queue<Client>()

queueClient.push(Client(name: "Dima", doctor: .narcolog))
queueClient.push(Client(name: "Petya", doctor: .narcolog))
queueClient.push(Client(name: "Masha", doctor: .psycholog))

queueClient.pop()




