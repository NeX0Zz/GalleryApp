import SwiftUI

struct SearchVIew: View {
    
    @State private var searchText = ""
    @State var selectTab = "3"
    var body: some View {
        NavigationStack {
            HStack{
                
            }.navigationTitle("Search")
        }
        .searchable(text: $searchText)
    }
}



#Preview {
    SearchVIew()
}
