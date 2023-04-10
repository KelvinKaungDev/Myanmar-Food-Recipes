import SwiftUI

struct MenuView: View {
    
    @State var show = false
    @State var i : Int = 0
    @State private var larger = true
    
    var foods = Food().foodCollections()
    var histories = History().history
    
    var body: some View {
        
        if show {
            let getFood = Food().getFoods(i: i)
            FoodDetails(show: $show, img: getFood.image, title: getFood.title, subTitle: getFood.subTitle, bgColor: getFood.bgColor, processes: getFood.process, description: getFood.description, ingredientOne: getFood.ingredientOne, ingredientTwo: getFood.ingredientTwo)
        }
        
        if !show {
                ZStack {
                    ScrollView( showsIndicators: false) {
                        
                        Text("Food Recipe")
                            .font(.system(size: 35))
                            .fontWeight(.bold)
                            .foregroundColor(.brown)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.top, 20)
                            .padding(20)

                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack (spacing: 40) {
                                ForEach(Array(foods.enumerated()), id: \.offset) { index, food in
                                    GeometryReader { geometry in
                                        FoodCollections(show: $show, id: index, img: food.image, title: food.title, subTitle: food.subTitle, description: food.description, bgColor: food.bgColor)
                                            .rotation3DEffect(Angle(degrees: (Double(geometry.frame(in: .global).minX) - 40) / -20), axis: (x: 0, y: 10.0, z: 0))
                                    }
                                    .frame(width: 300, height: 550)
                                    .shadow(color: Color.gray.opacity(0.8), radius: 10, x: 5, y: 5)
                                    .onTapGesture {
                                        withAnimation(.spring(response: 0.6, dampingFraction: 0.8)) {
                                            i = index
                                            show.toggle()
                                        }
                                    }
                                }
                            }
                            .padding(25)
                            .animation(.easeInOut(duration: 0.5), value : larger)
                        }.onAppear {
                            larger = false
                        }
                        
                        Text("About Foods".uppercased())
                            .font(.title2)
                            .font(.footnote.bold())
                            .fontWeight(.bold)
                            .foregroundColor(.brown)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 20)
                        
                        ScrollView(.vertical, showsIndicators: false) {
                            VStack(spacing: 20) {
                                ForEach(histories, id: \.self) { history in
                                    NavigationLink (destination: HistoryDetails(history: history)){
                                        HistoryCollections(image: history.image, title: history.title, description: history.descriptionOne)
                                    }
                                }
                            }
                        }
                    }
                    .foregroundColor(.brown)
                }
                .navigationBarBackButtonHidden()
        }
        
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
