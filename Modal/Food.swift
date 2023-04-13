import SwiftUI

struct Food {
    
    var count : Int?
    
    var foods = [
        FoodBrain(id: 0, title: "unesco places", description: "I would like to introduce burmese food called Lat Phat Thoke which is also known as fermented green tea salad.", image: "logo1", topic: [["Bagan","This site features thousands of Buddhist temples and pagodas in a 42 square-kilometer area along Ayeyarwady River, representing the height of the Bagan Dynasty between the 11th and 13th centuries."],["Pyu Ancient Cities","This World Heritage Site includes three ancient cities of Pyu, Sri Ksetra, Halin and Beikthano, which were the first urban centers in Myanmar and flourished between the 2nd century BC and the 9th century AD."], ["Nga Pa Li","First of all, need to rinse tomatoes, and green chilli. In a bowl, mix together the tea leaves, cilantro, scallions, garlic and green chili, mix well."],["Shwe Dagon","First of all, need to rinse tomatoes, and green chilli. In a bowl, mix together the tea leaves, cilantro, scallions, garlic and green chili, mix well."]]),
        
        FoodBrain(id: 1, title: "Famous Festivals", description: " Burmese Traditional Snack Balls or Mote Lone Yay Paw is is a treat brought out specially for the Burmese new year festival Thingyan.", image: "festival", topic: [["Bagan","First of all, need to rinse tomatoes, and green chilli. In a bowl, mix together the tea leaves, cilantro, scallions, garlic and green chili, mix well."],["Bagan","First of all, need to rinse tomatoes, and green chilli. In a bowl, mix together the tea leaves, cilantro, scallions, garlic and green chili, mix well."], ["Bagan","First of all, need to rinse tomatoes, and green chilli. In a bowl, mix together the tea leaves, cilantro, scallions, garlic and green chili, mix well."],["Bagan","First of all, need to rinse tomatoes, and green chilli. In a bowl, mix together the tea leaves, cilantro, scallions, garlic and green chili, mix well."]]),
        
        FoodBrain(id: 2, title: "Traditional Foods", description: "Pae Pyote and Nan Par are two popular Burmese foods that are enjoyed by many in Myanmar. It is pretty easy to make.", image: "logo1", topic: [["Bagan","First of all, need to rinse tomatoes, and green chilli. In a bowl, mix together the tea leaves, cilantro, scallions, garlic and green chili, mix well."],["Bagan","First of all, need to rinse tomatoes, and green chilli. In a bowl, mix together the tea leaves, cilantro, scallions, garlic and green chili, mix well."], ["Bagan","First of all, need to rinse tomatoes, and green chilli. In a bowl, mix together the tea leaves, cilantro, scallions, garlic and green chili, mix well."],["Bagan","First of all, need to rinse tomatoes, and green chilli. In a bowl, mix together the tea leaves, cilantro, scallions, garlic and green chili, mix well."]])
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
    
    func description(count : Int) -> String {
        return foods[count].description
    }
    
    func image(count : Int) -> String {
        return foods[count].image
    }
}

