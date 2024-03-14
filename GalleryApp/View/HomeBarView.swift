import SwiftUI

struct HomeBarView: View {
    
    @State var show = false
    
    var body: some View {
        NavigationStack{
            ZStack{
                ScrollView{
                    VStack(alignment: .leading, spacing: 20){
                        //                    HStack{
                        //                        SideBarIconA(showSideMenu: $show)
                        //                            .offset(y:4)
                        //                        Spacer()
                        //                        SearchBarIcon()
                        //                        profile()
                        //                    }.padding(.horizontal)
                        PopularView()
                        AddedRecentlyView()
                        AddedRecentlyView()
                    }
                    //.offset(x: show ? 275 : 0)
                    //            }.overlay {
                    //                sidemenuview()
                    //                    .offset(x: show ? 0 : -280)
                    //            }
                }
            }.navigationTitle("Home")
        }
    }
}









struct profile: View {
    var body: some View {
        
        Button(action: {
            //
        }, label: {
            ZStack{
                Circle ()
                    .frame(width: 50, height: 50)
                    .foregroundColor(.white)
                    .shadow(color: .black.opacity(0.1), radius: 10, x: 0, y: 0)
                Image (systemName: "person").bold()
                    .font(.title2)
                    .foregroundColor(.black)
            }})
        
    }
}




#Preview {
    HomeBarView()
}
