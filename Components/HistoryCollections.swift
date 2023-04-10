import SwiftUI

struct HistoryCollections : View {
    
    var image : String
    var title : String
    var description : String
    
    var body : some View {
        HStack {
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(10)
            
            HStack {
                VStack(alignment: .leading, spacing: 5) {
                    
                    Text(title)
                        .font(.title2)
                        .fontWeight(.black)
                    
                    Text(description)
                        .foregroundColor(.secondary)
                        .lineLimit(2)
                }
                .padding()
                
                Spacer()
            }.padding(10)
        }
        .cornerRadius(30)
        .overlay(RoundedRectangle(cornerRadius: 30).stroke(.brown,lineWidth : 1))
        .padding()
    }
}


