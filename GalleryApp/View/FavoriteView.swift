import SwiftUI

struct FavoriteView: View {
    
    @EnvironmentObject var it: ChannelData
   // @Binding var dfsg: String
    
    var body: some View {
        NavigationStack{
            ScrollView(.vertical, showsIndicators: false){
                VStack(spacing: 7){
                    ForEach(theimages3) { item in
                        Button {
                        } label:{
                            Image(item.name)
                                .resizable ()
                                .scaledToFill()
                                .frame(width: 130, height: 200)
                                .cornerRadius(20)
                        }
                    }
                }.onAppear(){
                }
                .padding(.leading)
            }.navigationTitle("Favorite")
        }
    }
}




#Preview {
    FavoriteView()
}
