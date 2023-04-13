import SwiftUI

struct FoodDetails: View {
    
    @Binding var show : Bool
    @State private var selectedTab = 0
    @State private var showHistory = false
       
    var img : String
    var title : String
    var topics : [[String]]
    var description : String
    
    var body: some View {
        ZStack {
            ScrollView (showsIndicators: false){
                cover
                detail
            }
            .ignoresSafeArea()

            Button {
                withAnimation(.spring(response: 0.6, dampingFraction: 0.8)) {
                    show.toggle()
                }
            } label: {
                Image(systemName: "xmark")
                    .font(.body.weight(.bold))
                    .foregroundColor(.secondary)
                    .padding(8)
                    .background(.ultraThinMaterial, in : Circle())
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
            .padding(.trailing, 30)
        }.navigationBarBackButtonHidden()
    }
    
    var cover : some View {
        VStack{
            Spacer()
        }
        .frame(maxWidth: .infinity)
        .frame(height: 250)
        .padding(20)
        .foregroundColor(.white)
        .background(
            Image(img)
                .resizable()
                .aspectRatio(contentMode: .fill)
        )
        .mask(
            RoundedRectangle(cornerRadius: 20, style: .continuous)
        )
        .overlay (
            VStack (alignment: .leading, spacing: 12){
                Text(title)
                    .font(.largeTitle.weight(.bold))
                    .frame(maxWidth: .infinity, alignment: .leading)
                Text(description)
                }
                .padding(20)
                .background(
                    Rectangle()
                        .fill(.ultraThinMaterial)
                        .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
                        .blur(radius: 0)

                )
                .offset(y: 180)
                .padding(20)
            )
    }
    
    var detail : some View {
        VStack {
    
            VStack {
                ForEach(topics, id : \.self) { topic in
                    Text(topic[0])
                        .font(.title2)
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.top, 20)
                        .foregroundColor(.brown)
                    
                    Text(topic[1])
                        .font(.title3)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.top, 2)
                        .foregroundColor(.brown)
                }
            }
            .padding(20)
            .transition(.asymmetric(insertion: .scale, removal: .opacity))
        }
        .padding(.top, 120)
    }
}

struct FoodDetails_Previews: PreviewProvider {
    static var previews: some View {
        FoodDetails(show: .constant(true), img: "", title: "", topics: [[""]], description: "")
    }
}

