import SwiftUI
struct SideBarIconA: View {
    
    @Binding var showSideMenu: Bool
    
    var body: some View {
        VStack(spacing: 4){
            RoundedRectangle(cornerRadius: 10, style: .continuous)
                .frame(width: 30,height: 4)
            HStack(spacing: showSideMenu ? 0 : 10){
                RoundedRectangle(cornerRadius: 19, style: .continuous)
                    .frame(width: 15, height: 4)
                RoundedRectangle(cornerRadius: 19, style: .continuous)
                    .frame(width: 15,height: 4)
                    .offset(y: showSideMenu ? 0 : -15)
            }
        }.onTapGesture {
            withAnimation{
                showSideMenu.toggle()
            }
        }
    }
}

#Preview {
    SideBarIconA(showSideMenu: .constant(false))
}
