import UIKit

// Task 1

class TV {
    var markaAndModel:(String, String)
    var defaultChannal: TVChannal
    var isPower: Bool
    
    init (markaAndModel:(String, String), defaultChannal: TVChannal, isPower: Bool) {
        self.defaultChannal = defaultChannal
        self.isPower = isPower
        self.markaAndModel = markaAndModel
    }
    
    
    func showTVNow() {
        
        print("You are watch on \(markaAndModel.0)_\(markaAndModel.1): \(defaultChannal.rawValue)")
        
    }
    
    func changeChannal (channal: TVChannal) {
        
        switch channal {
        case .ort:
            defaultChannal = .ort
        case .russia:
            defaultChannal = .russia
        case .ntv:
            defaultChannal = .ntv
        case .tnt:
            defaultChannal = .tnt
        case .matchTV:
            defaultChannal = .matchTV
        case .extreme:
            defaultChannal = .extreme
        }
    }
    
}

enum TVChannal: String {
    case ort = "Now you view ORT"
    case russia = "Now you view Russia"
    case ntv = "Now you view NTV"
    case tnt = "Now you view TNT"
    case matchTV = "Now you view MatchTV"
    case extreme = "Now you view Extreme"
}

var programm = TV(markaAndModel: ("Samsung","Tr32FF55"), defaultChannal: .russia, isPower: false)


programm.isPower = true

if programm.isPower == true {
    programm.showTVNow()
    print("Change chanal")
    programm.changeChannal(channal: .matchTV)
    programm.showTVNow()
} else { print("TV \(programm.markaAndModel.0)_\(programm.markaAndModel.1) power OFF") }



// Task 2
//
struct Setting {
    var color: Bool
    static var volumeMin: Double = 0.0
    static var volumeMax: Double = 1.0
    var volume: Double {
        didSet {
            if volume < Setting.volumeMin {
                volume = Setting.volumeMin
                print ("Volume Min")
            } else if volume > Setting.volumeMax {
                volume = Setting.volumeMax
                print("Volume Max")
            }
            print("Volume - \(volume)")
        }
    }
}


class TVKitchen: TV {
    
    var setting: Setting = .init(color: false, volume: 0.5)
    
    override func showTVNow() {
        print("You are watch on \(markaAndModel.0)_\(markaAndModel.1):\(defaultChannal.self) on volume \(tvKitchen.setting.volume) and color \(tvKitchen.setting.color)")
    }
}
var tvKitchen = TVKitchen(markaAndModel: ("Philips","Tywec8833"), defaultChannal: .tnt, isPower: false)
//
//if tvKitchen.setting.color == true {
//    print("TV \(tvKitchen.markaAndModel.0) color")
//} else { print("TV \(tvKitchen.markaAndModel) black/white") }

tvKitchen.isPower = false

if tvKitchen.isPower == true {
    
    tvKitchen.showTVNow()
    tvKitchen.isPower = true
    tvKitchen.changeChannal(channal: .ort)
} else { print ("TV \(tvKitchen.markaAndModel.0)_\(tvKitchen.markaAndModel.1) power OFF") }

enum Volume: Double {
    case min = 0.0
    case middle = 0.5
    case max = 1.0
}

