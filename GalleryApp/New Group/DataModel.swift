import Foundation

class ImageSelection: ObservableObject {
    @Published var selectedData: Datamode? = nil
    @Published var showingSheet: Bool = false
    func getHeight(_ index: Int) -> CGFloat {
        return index % 2 == 0 ? 180 : 300
    }
    func getHeight2(_ index: Int) -> CGFloat {
        return index % 2 == 0 ? 300 : 180
    }
}

struct Datamode: Identifiable, Equatable {
    var id = UUID()
    var name: String
    var titel: String
    static func ==(lhs: Datamode, rhs:Datamode) -> Bool {
        return lhs.id == rhs.id
    }
}

struct SideBar1: Identifiable{
    var id = UUID()
    var icon: String
    var title: String
    var tab: TabIcon1
    var index: Int
}

struct SideBar: Identifiable{
    var id = UUID()
    var icon: String
    var title: String
    var tab: TabIcon
    var index: Int
}

enum TabIcon: String {
    case Home
    case Card
    case Favorite
    case Purchases
    case Notification
}

enum TabIcon1: String {
    case Home
    case Card
    case Favorite
    case Purchases
    case Notification
}
