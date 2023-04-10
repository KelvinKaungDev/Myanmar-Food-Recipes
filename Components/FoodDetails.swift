import SwiftUI

struct FoodDetails: View {
    
    @Binding var show : Bool
    @State private var showVegan = false
    @State private var selectedTab = 0
       
    var img : String
    var title : String
    var subTitle : String
    var bgColor : Color
    var processes : [String]
    var description : String
    var ingredientOne : [String]
    var ingredientTwo : [String]
    
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
            .padding(.top, 8)
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
                .background(bgColor)
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
                    Text("Ingredient")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.brown)
                        .frame(maxWidth: .infinity, alignment: .leading)

                VStack {
                    HStack (alignment: .top, spacing: 20){
                        ForEach(ingredientOne, id: \.self) { ingredientOne in
                            VStack {
                                Image(ingredientOne)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 90, height: 90)
                                    .padding(5)
                                
                                Text(ingredientOne)
                                    .font(.system(size: 17))
                                    .foregroundColor(.brown)
                            }
                        }
                    }
                
                    HStack (alignment: .top, spacing: 20){
                        ForEach(ingredientTwo, id: \.self) { ingredientTwo in
                            VStack {
                                Image(ingredientTwo)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 90, height: 90)
                                    .padding(5)
                                
                                Text(ingredientTwo)
                                    .font(.system(size: 17))
                                    .foregroundColor(.brown)
                            }

                        }
                    }
                }
                    Text("Process")
                        .font(.title)
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.top, 20)
                        .foregroundColor(.brown)

                    ForEach(processes, id : \.self) { process in
                            BulletPoint(text: process)
                            .padding(.top, 10)
                            .lineSpacing(3)
                            .foregroundColor(.brown)
                }
            }
            .padding(20)
        }
        .padding(.top, 120)
    }
}

struct BulletPoint: View {
    var text: String
    
    var body: some View {
        HStack {
            Text("•")
                .font(.headline)
                .padding(.trailing, 5)
            Text(text)
                .font(.title3)
        }
    }
}

struct FoodDetails_Previews: PreviewProvider {

    static var previews: some View {
        FoodDetails(show: .constant(true), img: "", title: "", subTitle: "", bgColor: .brown, processes: [""], description: "", ingredientOne: [""], ingredientTwo: [""])
    }
}

