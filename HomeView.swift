import SwiftUI

struct HomeView: View {

    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    Text("Myanmar".uppercased())
                        .font(.title2)
                        .fontWeight(.bold)

                    Text("Traditional Foods".uppercased())
                        .font(.title3)
                        .fontWeight(.bold)
                }
                .foregroundColor(Color.brown)
                .padding(.top,100)


//                Text("Myanmar Traditional Food".uppercased())
//                    .fontWeight(.bold)
//                    .foregroundColor(.brown)
//                    .font(.title2)
//                    .scaledToFit()
//                    .padding(.top,100)

                
                
                Spacer()
                
                Image("mote lone")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                Spacer()
                
                NavigationLink(destination: MenuView()) {
                    Text("START COOKING")
                        .fontWeight(.bold)
                        .frame(width: 280, height: 50, alignment: .center)
                        .foregroundColor(.white)
                        .background(.brown)
                        .cornerRadius(10)
                        .padding(.top, 50)
                }
                .padding(.bottom, 150)
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
