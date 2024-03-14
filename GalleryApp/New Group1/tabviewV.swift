import SwiftUI

struct tabviewV: View {
    
    @State var selctedIndex = 0
    let timer = Timer.publish(every: 2, on: .main, in: .common).autoconnect()
    
    var body: some View{
        TabView (selection: $selctedIndex) {
            imageview (image:"m1")
                .tag (1)
            imageview (image:"m2")
                .tag (2)
            imageview (image: "m2" )
                .tag (3)
            imageview (image: "m1")
                .tag (4)
            imageview (image: "m2")
                .tag (5)
        }
        .tabViewStyle(PageTabViewStyle())
        .offset (x: -10)
        .frame(width: 266, height: 175)
        .padding(.top, 10)
        .onReceive(timer) { _ in
            withAnimation {
                selctedIndex = selctedIndex == 5 ? 0 : selctedIndex + 1
            }
        }
    }
}

struct tabviewV_Previews: PreviewProvider {
    static var previews: some View {
        tabviewV()
    }
}

struct imageview: View {
    var image = ""
    var body: some View {
        Image (image)
            .resizable()
            .scaledToFill()
            .frame (width: 230, height: 157)
            .clipped()
            .cornerRadius(10)
            .padding (.leading, 15)
    }
}
#Preview {
    tabviewV()
}
