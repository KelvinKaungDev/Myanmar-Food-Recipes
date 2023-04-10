import SwiftUI
import CoreGraphics

struct FoodBrain : Identifiable, Hashable{
    
    var id: Int
    var image : String
    var title : String
    var bgColor : Color
    var subTitle : String
    var process : [String]
    var description : String
    var ingredientOne : [String]
    var ingredientTwo : [String]
    
    init(id: Int, title: String, subTitle: String, description: String, image: String, bgColor : Color, ingredientOne : [String], ingredientTwo : [String], process : [String]) {
        self.id = id
        self.title = title
        self.image = image
        self.process = process
        self.bgColor = bgColor
        self.subTitle = subTitle
        self.description = description
        self.ingredientOne = ingredientOne
        self.ingredientTwo = ingredientTwo
    }
}


