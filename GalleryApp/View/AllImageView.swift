import SwiftUI

struct AllImageView: View {
    
    @ObservedObject var imageSelection = ImageSelection()
    var columns:[GridItem] = [GridItem(.flexible())]
    
    var body: some View {
        NavigationStack{
            ScrollView(){
                HStack(spacing: 10){
                    LazyVGrid(columns: columns, spacing: 0){
                        ForEach(theimages, id: \.id)
                        { item in
                            Button {
                                imageSelection.selectedData = item
                                imageSelection.showingSheet = true
                            } label:{
                                Image(item.name)
                                    .resizable ()
                                    .scaledToFill()
                                    .frame(width: 180, height: imageSelection.getHeight(theimages.firstIndex(of: item) ?? 0))
                                    .cornerRadius(20)
                                    .padding(.vertical, 7)
                            }
                        }
                    }
                    LazyVGrid(columns: columns, spacing: 0){
                        ForEach(theimages, id: \.id)
                        { item in
                            Button {
                                imageSelection.selectedData = item
                                imageSelection.showingSheet = true
                            } label:{
                                Image(item.name)
                                    .resizable ()
                                    .scaledToFill()
                                    .frame(width: 180, height: imageSelection.getHeight2(theimages.firstIndex(of: item) ?? 0))
                                    .cornerRadius(20)
                                    .padding(.vertical, 7)
                            }
                        }
                    }
                }
            }.navigationTitle("All photos")
            .padding(.horizontal, 10)
            .sheet(isPresented: $imageSelection.showingSheet) {
                SelectImageView(selectedDataa: imageSelection.selectedData ?? theimages[0])
                    .presentationDetents([.fraction(0.64), .large])
                    .presentationDragIndicator(.visible)
            }
        }
    }
}

#Preview {
    AllImageView()
}
