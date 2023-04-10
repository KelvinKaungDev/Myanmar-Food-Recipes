import SwiftUI

struct HistoryDetails : View {
    var history : HistoryBrain
    
    var body : some View {
        ScrollView(.vertical,showsIndicators: false) {
            VStack {
                Image(history.image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .padding(5)
                    .mask(RoundedRectangle(cornerRadius: 15, style: .continuous))
                
                HStack {
                    VStack(alignment: .leading,spacing: 5) {
                        
                        Text(history.title)
                            .font(.title)
                            .fontWeight(.black)
                        
                        Text(history.descriptionOne)
                            .font(.system(size:18))
                            .padding(10)
                            .lineSpacing(3)
                        
                        Text(history.descriptionTwo)
                            .font(.system(size:18))
                            .padding(10)
                            .lineSpacing(3)
                    }
                    .foregroundColor(.brown)
                    .padding(15)
                    
                    Spacer()
                }
            }
        }
    }
}

