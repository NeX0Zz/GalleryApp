
import SwiftUI

struct AddedRecentlyView: View {
    
    @ObservedObject var imageSelection = ImageSelection()
    
    var body: some View {
        VStack(alignment: .leading){
            Text("Added recently").bold()
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


#Preview {
    AddedRecentlyView()
}
