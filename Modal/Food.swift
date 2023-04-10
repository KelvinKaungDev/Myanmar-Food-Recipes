import SwiftUI

struct Food {
    var count : Int?
    
    var foods = [
        FoodBrain(id: 0, title: "Lahpet Thoke", subTitle: "Myanmar Traditional Food", description: "Latpet Thoke, also known as Burmese Tea Leaf Salad, is a traditional dish from Myanmar that has been enjoyed for centuries.", image: "laphatthoke", bgColor: .brown, ingredientOne: ["shrimp", "onion", "garlic"], ingredientTwo: ["tea leaf","lime", "tomato"], process: ["Rinse the pickled tea leaves in cold water and drain well. Set aside.In a dry skillet, toast the sesame seeds over medium heat until they turn golden brown.", "Set aside. In a mixing bowl, combine the pickled tea leaves, sliced cabbage, tomatoes, onions, and green bell pepper. Mix well.", "Add the roasted peanuts, crispy fried garlic, and sesame seeds to the mixing bowl. Mix well again.", "In a small bowl, mix together the fish sauce, soy sauce, vegetable oil, lime juice, and a pinch of salt. Pour the dressing over the salad and mix well to combine.","Taste and adjust the seasoning as needed.Serve the Latpet Thoke at room temperature or chilled as a refreshing salad or as a side dish to a larger meal."]),
        
        FoodBrain(id: 1, title: "Mote Lone Yay Paw", subTitle: "Myanmar Traditional Food", description: "Mote Lone Yay Paw is a traditional snack from Myanmar that has been enjoyed for generations.", image: "mote lone", bgColor: .secondary,  ingredientOne: ["water", "salt", "bean"], ingredientTwo: ["flour", "rice"], process: ["In a mixing bowl, combine the glutinous rice flour, grated coconut, sesame seeds, and a pinch of salt. Mix well.", "In a saucepan, melt the jaggery with 1/4 cup of water over medium heat. Stir until the jaggery dissolves completely.", "Add the melted jaggery to the mixing bowl and mix well until the dough becomes sticky and smooth.", "Take a small amount of the dough (about the size of a golf ball) and roll it into a ball.", "Flatten the dough ball into a disc shape and wrap it with a piece of banana leaf. Secure the leaf with a toothpick. Repeat the process with the remaining dough.", "Place the wrapped Mote Lone Yay Paw into a steamer and steam over medium-high heat for about 15-20 minutes or until cooked through. Remove the Mote Lone Yay Paw from the steamer and let them cool for a few minutes before serving."]),
        
        FoodBrain(id: 2, title: "Pae Pyote Nan Pyar", subTitle: "Myanmar Traditional Food", description: "Pae Pyote and Nan Par are two popular Burmese foods that are enjoyed by many in Myanmar. It is pretty easy to make.", image: "pal pyote", bgColor: .brown, ingredientOne: ["water", "salt", "htanyat"], ingredientTwo: ["flour", "baking soda"], process: ["In a mixing bowl, combine the glutinous rice flour, grated coconut, sesame seeds, and a pinch of salt. Mix well.", "In a saucepan, melt the jaggery with 1/4 cup of water over medium heat. Stir until the jaggery dissolves completely.", "Add the melted jaggery to the mixing bowl and mix well until the dough becomes sticky and smooth.", "Take a small amount of the dough (about the size of a golf ball) and roll it into a ball.", "Flatten the dough ball into a disc shape and wrap it with a piece of banana leaf. Secure the leaf with a toothpick.Repeat the process with the remaining dough.", "Place the wrapped Mote Lone Yay Paw into a steamer and steam over medium-high heat for about 15-20 minutes or until cooked through. Remove the Mote Lone Yay Paw from the steamer and let them cool for a few minutes before serving."])
    ]
    
    func foodCount() -> Int {
        return foods.count
    }
    
    func foodCollections() -> [FoodBrain] {
        return foods
    }
    
    func getFoods(i : Int) -> FoodBrain {
        return foods[i]
    }
    
    func getTitle(count : Int) -> String {
        return foods[count].title
    }
    
    func getSubTitle(count : Int) -> String {
        return foods[count].subTitle
    }
    
    func description(count : Int) -> String {
        return foods[count].description
    }
    
    func image(count : Int) -> String {
        return foods[count].image
    }
}

