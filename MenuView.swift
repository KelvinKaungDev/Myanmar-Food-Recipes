import SwiftUI

struct MenuView: View {
    
    @State var show = false
    @State var i : Int = 0
    var quiz = QuizzGenerater()
    
    var foods = Food().foodCollections()
    
    var body: some View {
        
        if show {
            let getFood = Food().getFoods(i: i)
            FoodDetails(show: $show, img: getFood.image, title: getFood.title, topics: getFood.topic, description : getFood.description)
        }
        
        if !show {
            ZStack {
                ScrollView(showsIndicators: false) {
                    
                    Text("Myanmar Articles")
                        .font(.system(size: 35))
                        .fontWeight(.bold)
                        .foregroundColor(.brown)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.top, 20)
                        .padding(20)

                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack () {
                            ForEach(Array(foods.enumerated()), id: \.offset) { index, food in
                                GeometryReader { geometry in
                                    FoodCollections(show: $show, id: index, img: food.image, title: food.title, description: food.description)
                                        .rotation3DEffect(Angle(degrees: (Double(geometry.frame(in: .global).minX) - 40) / -20), axis: (x: 0, y: 10.0, z: 0))
                                }
                                .frame(width: 330, height: 400)
                                .shadow(color: Color.gray.opacity(0.8), radius: 10, x: 5, y: 5)
                                .onTapGesture {
                                    withAnimation(.spring(response: 0.6, dampingFraction: 0.8)) {
                                        i = index
                                        show.toggle()
                                    }
                                }
                            }
                        }
                        .padding(20)
                        .animation(.easeInOut(duration: 0.5), value : show)
                    }.onAppear {
                        show = false
                    }
                    
                    Text("Quizzes")
                        .font(.title2)
                        .font(.footnote.bold())
                        .fontWeight(.bold)
                        .foregroundColor(.brown)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(20)
                    
                    ZStack {
                        NavigationLink(destination: QuizCollections(quiz: quiz)) {
                            LinearGradient(gradient: Gradient(colors: [Color.brown, Color.orange]), startPoint: .topLeading, endPoint: .bottomTrailing)
                                .frame(width: 300, height: 300)
                                .cornerRadius(20)
                                .frame(alignment: .leading)
                        }
                    }
                    
                }
                .foregroundColor(.brown)
            }
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
