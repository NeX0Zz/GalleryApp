import SwiftUI

struct HImageView: View {
    
    @ObservedObject var imageSelection = ImageSelection()
    
    var body: some View {
        NavigationStack{
            VStack(alignment: .leading){
                Text("Popular").bold()
                    .font(.title)
                    .padding()
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(spacing: 7){
                        ForEach(theimages3) { item in
                            Button {
                                imageSelection.selectedData = item
                                imageSelection.showingSheet = true
                            } label:{
                                Image(item.name)
                                    .resizable ()
                                    .scaledToFill()
                                    .frame(width: 130, height: 200)
                                    .cornerRadius(20)
                            }
                        }
                        pexelsview()
                    }
                    .padding(.leading)
                }.sheet(isPresented: $imageSelection.showingSheet) {
                    SelectImageView(selectedDataa: imageSelection.selectedData ?? theimages[0])
                        .presentationDetents([.fraction(0.64), .large])
                    .presentationDragIndicator(.visible)}
            }
        }
    }
}

struct pexelsview: View {
    var body: some View{
        RoundedRectangle(cornerRadius: 20, style: .continuous)
            .stroke(lineWidth: 1)
            .frame(width: 130, height: 200)
        //.padding(.leading)
            .overlay(alignment: .trailing) {
                VStack(alignment: .leading){
                    Text("PEXELS").bold()
                        .font(.title)
                    Text("All photos and videos on Pexels are free touse.").bold()
                        .font(.system(size: 14))
                        .frame(width: 120)
                        .multilineTextAlignment(.leading)
                    
                    Spacer ()
                    
                    HStack{
                        Text ("Try Now").bold()
                            .font(.title2)
                        Image (systemName:"arrow.right").bold()
                    }
                }
                .padding(.leading, 5)
            }
    }
}





#Preview {
    HImageView()
}
