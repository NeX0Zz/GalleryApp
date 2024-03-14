//
//  q.swift
//  GalleryApp
//
//  Created by Денис Николаев on 25.02.2024.
//

import SwiftUI

struct PopularView: View {
    
    @ObservedObject var imageSelection = ImageSelection()
    
    var body: some View {
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

#Preview {
    PopularView()
}
