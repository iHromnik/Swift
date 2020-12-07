import UIKit


enum HospitalError: Error {

    case output
    case onHoliday
}

struct Item {
    var offices: Int
    let doctor: Doctor
}

struct Doctor {
    let name: String
}

class Hospital {

    var inventory = [
        "Berg": Item(offices: 102, doctor: Doctor(name: "dc.Berg")),
        "Clerc": Item(offices: 210, doctor: Doctor(name: "dc.Clerc")),
        "Malyar": Item(offices: 305, doctor: Doctor(name: "Belim-Krasim"))
    ]

    func visid(itemNamed name: String) -> (Doctor?, HospitalError?) {
        guard let item = inventory[name] else {
            return (nil, HospitalError.output)
        }
        guard item.offices != 0 else {
            return (nil, HospitalError.onHoliday)
        }

                let newItem = item
                inventory[name] = newItem
                return (newItem.doctor, nil)
            }
        }
        let hospital = Hospital()
        let visid1 = hospital.visid(itemNamed: "Berg")

        if let doc = visid1.0 {
            print(" Пройдите в кабинет: \(doc.name)")
        } else if let error = visid1.1 {
            print("Доктор в отпуске: \(error.hashValue)")
        }
