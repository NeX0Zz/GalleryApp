import Foundation

var theimages = [
    Datamode(name:"m1",titel:"Free stock photos images & copyright free pictures."),
    Datamode(name:"m1",titel:"Free stock photos images & copyright free pictures."),
    Datamode(name:"m2",titel:"Free stock photos images & copyright free pictures."),
    Datamode(name:"m2",titel:"Free stock photos images & copyright free pictures."),
    Datamode(name:"m1",titel:"Free stock photos images & copyright free pictures."),
    Datamode(name:"m1",titel:"Free stock photos images & copyright free pictures."),
]
var theimages2 = [
    Datamode (name:"m1",titel:"Free stock photos images & copyright free pictures."),
    Datamode (name:"m2",titel:"Free stock photos images & copyright free pictures."),
    Datamode (name:"m1",titel:"Free stock photos images & copyright free pictures."),
    Datamode (name:"m1",titel:"Free stock photos images & copyright free pictures."),
    Datamode (name:"m1",titel:"Free stock photos images & copyright free pictures."),
]

var theimages3 = [
    Datamode(name:"m2",titel:"Free stock photos images & copyright free pictures."),
    Datamode(name:"m2",titel:"Free stock photos images & copyright free pictures."),
    Datamode(name:"m2",titel:"Free stock photos images & copyright free pictures."),
    Datamode(name:"m2",titel:"Free stock photos images & copyright free pictures."),
    Datamode(name:"m2",titel:"Free stock photos images & copyright free pictures."),
]

let sidebar1 = [
    SideBar1(icon: "square.stack", title: "Card", tab: .Card, index:0),
    SideBar1(icon: "magnifyingglass", title: "Favorite", tab: .Favorite,index: 1),
    SideBar1(icon: "house", title: "Home", tab: .Home, index: 2),
    SideBar1(icon: "star", title: "Purchases", tab: .Purchases, index: 3),
    SideBar1(icon: "person", title: "Notification", tab: .Notification, index: 4),
]

let sidebar = [
    SideBar(icon: "house.fill", title: "Home", tab: .Home, index: 0),
    SideBar(icon: "creditcard.fill", title: "Card", tab: .Card, index: 1),
    SideBar(icon: "heart.fill", title: "Favorite", tab: .Favorite, index: 2),
    SideBar(icon: "cart.fill.badge-plus", title: "Purchases", tab: .Purchases, index: 3),
    SideBar(icon: "bell.badge.fill", title: "Notification", tab: .Notification, index: 4)
]

final class ChannelData: ObservableObject {
    
    @Published var items: [Datamode] = []
    
    func add(_ datamode: Datamode) {
        items.append(datamode)
    }
    
    func deleteItems(at offsets: IndexSet) {
        items.remove(atOffsets: offsets)
    }
}
