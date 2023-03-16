import UIKit

// Task 1

class TV {
    var markaAndModel:(String, String)
    // var marka: String
    // var model: String
    var defaultChannal: TVChannal
    var power: Bool
   // var volume: Double
    
    
    
    init (markaAndModel:(String, String),/* marka: String, model: String, */ defaultChannal: TVChannal, power: Bool) {
        //self.marka = marka
        //self.model = model
        self.defaultChannal = defaultChannal
        self.power = power
        self.markaAndModel = markaAndModel
    }
    
}

enum TVChannal: String {
    case ort
    case russia
    case ntv
    case tnt
    case matchTV
    case extreme
}




var programm = TV(markaAndModel: ("Samsung","Tr32FF55"),/* marka: "Philips", model: "QWWE", */defaultChannal: .ort, power: false)

// var currentChannal = TVChannal.tnt

programm.power = true

//print("Now power: ",programm.power)

print("Default channal when power on:", programm.defaultChannal)

func changeChannal (channal: TVChannal) {
    if programm.power == true {
        switch channal {
        case .ort:
            print("On TV",programm.markaAndModel.0, "Now you view ORT")
        case .russia:
            print("Now you view Russia")
        case .ntv:
            print("Now you view NTV")
        case .tnt:
            print("Now you view TNT")
        case .matchTV:
            print("Now you view MatchTV")
        case .extreme:
            print("Now you view Extreme")
        }
    } else { print("TV power OFF") }
}

changeChannal(channal: .ort)
print("Change chanal")
changeChannal(channal: .extreme)
print(programm.markaAndModel.0)


// Task 2
//
struct Setting {
    var color: Bool
    var volume: Double
}

var setting = Setting(color: false, volume: 0.5)

if setting.color == true {
    print("TV color")
} else { print("TV black/white") }

class TVNew: TV {
    private var setting = Setting(color: false, volume: 0)
    var maxVolume:Double = 1
    willSet {
        if newValue > maxVolume{
            self.
        }
    }
        }


enum Volume: Double {
    case min = 0.0
    case middle = 0.5
    case max = 1.0
}
//
//
//struct TotalVolume {
//    let volume: TVVolume
//
//}
//
//let qwe = TVVolume(volume: 0.4)
//
