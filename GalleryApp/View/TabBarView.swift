import SwiftUI

struct TabBarView: View {
    var show = false
//    @State var selected = 2
//    @State var progress:CGFloat = 0.5
//    @State var selecteditem:TabIcon1 = .Home
//    @State var xOffset:CGFloat = 2 * 70.0
    @State var selectTab = "3"
    var body: some View {
            TabView(selection: $selectTab) {
                AllImageView()
                    .tag("1")
                    .tabItem {
                        Image(systemName: "square.stack.fill")
                        Text("All photos")
                    }
                SearchVIew()
                    .tag("2")
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Home")
                    }
                HomeBarView()
                    .tag("3")
                    .tabItem {
                        Image(systemName: "house")
                        Text("Home")
                    }
                FavoriteView()
                    .tag("4")
                    .tabItem {
                        Image(systemName: "star")
                        Text("Favorite")
                    }
                SettingsView()
                    .tag("5")
                    .tabItem {
                        Image(systemName: "gear")
                        Text("Settings")
                    }
//            }.overlay {
//                sidemenuview()
//                    .offset(x: show ? 0 : -270)
//                    .navigationTitle("Home")
            }
//        HStack {
//                Button(action: {
//                    selected = 0
//                    print(selected)
//                }, label: {
//                    Image(systemName: "square.stack.fill")
//                        .foregroundColor(selected == 0 ? .black : .gray)
//                }).padding().font(.system(size: 25))
//                
//                Button(action: {selected = 1}){
//                    Image(systemName: "magnifyingglass")
//                        .foregroundColor(selected == 1 ? .black : .gray)
//                }.padding().font(.system(size: 25))
//                
//                Button(action: {selected = 2}){
//                    Image(systemName: "house.fill")
//                        .foregroundColor(selected == 2 ? .black : .gray)
//                }.padding().font(.system(size: 25))
//                
//                Button(action: {
//                    selected = 3
//                }){
//                    Image(systemName: "star.fill")
//                        .foregroundColor(selected == 3 ? .black : .gray)
//                }.padding().font(.system(size: 25))
//                
//                Button(action: {selected = 4}){
//                    Image(systemName: "person.fill")
//                        .foregroundColor(selected == 4 ? .black : .gray)
//                }.padding().font(.system(size: 25))
//                
//            }
//            .frame (maxWidth: UIScreen.main.bounds.width - 40)
//            .frame (height: 73)
//            .background(.ultraThickMaterial)
//            .cornerRadius (20)
//            .overlay(alignment: .topLeading) {
//        }
    }
}
#Preview {
    TabBarView()
}
