import SwiftUI

struct FoodCollections: View {
    
    @Binding var show : Bool
    
    var id : Int
    var img : String
    var title : String
    var subTitle : String
    var description : String
    var bgColor : Color
    
    var body: some View {
        
        VStack (alignment: .leading, spacing: 20.0){
            Image(img)
                .resizable()
                .scaledToFill()
                .frame(width: 250,height: 250)
                .padding(.leading, 120)
                .fixedSize()
            
            VStack (spacing: 10){
                Text(title)
                    .font(.largeTitle.weight(.bold))
                    .frame(maxWidth: .infinity, alignment: .leading)
                Text(subTitle.uppercased())
                    .font(.footnote.weight(.semibold))
                Text(description)
            }
            .padding(15)
            .padding(.top, 30)
            .padding(.leading, 50)
            .foregroundColor(.white)
        }
        .frame(width: 300, height: 500)
        .background(bgColor)
        .cornerRadius(30)
        .padding(.top, 10)
    }
}
