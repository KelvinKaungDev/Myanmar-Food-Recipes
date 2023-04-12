import SwiftUI

struct HomeView: View {

    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    Text("Welcome To Myanmar")
                        .font(.system(size: 28))
                        .fontWeight(.bold)
                }
                .foregroundColor(Color.white)
                .padding(.top,170)
                .padding(.bottom, 50)
                .lineSpacing(19)
                
                Spacer()
                                
                NavigationLink(destination: MenuView()) {
                    Text("Get Start")
                        .fontWeight(.bold)
                        .frame(width: 280, height: 50, alignment: .center)
                        .foregroundColor(.white)
                        .background(.brown)
                        .cornerRadius(10)
                        .padding(.top, 50)
                }
                .padding(.bottom, 150)
            }
            .background(
                Image("logo1")
            )
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
