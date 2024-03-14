import SwiftUI
struct SelectImageView: View {
    
    var selectedDataa: Datamode
    @EnvironmentObject var it: ChannelData
    @State var dfsg = ""
    
    var body: some View {
        
        VStack{
            Image(selectedDataa.name)
                .resizable().scaledToFill()
                .frame(maxWidth: UIScreen.main.bounds.width)
                .frame(height: 300)
                .clipped()
            VStack(alignment: .leading, spacing: 7){
                HStack(alignment: .bottom){
                    Button(action: {
                       //it.add(selectedDataa)
                        dfsg = selectedDataa.name
                    }, label: {
                        Text ("Add to Favorites")
                            .font(.title3)
                        Image (systemName: "star")
                            .font(.title2)
                            .onAppear()
                    }).foregroundColor(.white)
                        .padding()
                        .background(.black)
                        .cornerRadius(10)
                    Spacer()
                    Button {
                        //
                    } label: {
                        HStack(spacing: 15){
                            Button(action: {}, label: {
                                Text ("Download")
                                    .font(.title3)
                                Image (systemName: "arrow.down.circle")
                                    .font(.title2)
                            })
                        }
                        .foregroundColor(.white)
                        .padding()
                        .padding(.vertical, 12)
                        .background(.black)
                        .cornerRadius(10)
                    }
                }.padding()
                Text(selectedDataa.titel)
                    .font(.headline)
                    .frame (height: 130)
                    .frame (maxWidth: UIScreen.main.bounds.width)
                    .padding (10)
                    .background(.white).cornerRadius (10)
                    .shadow(color: .black.opacity(0.1), radius: 10, x: 0, y: 0)
            }
            .padding(.horizontal)
            Spacer()
        }
    }
}


#Preview {
    SelectImageView(selectedDataa: Datamode(name: "m2", titel: "1"))
}
