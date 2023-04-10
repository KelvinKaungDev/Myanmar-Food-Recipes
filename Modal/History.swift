struct History {
    var history = [
        HistoryBrain(image: "laphatthoke", descriptionOne: "Latpet Thoke, also known as Burmese Tea Leaf Salad, is a traditional dish from Myanmar that has been enjoyed for centuries. The origin of this dish can be traced back to the Shan State, where pickled tea leaves are a staple ingredient. It is said that the dish was created by Burmese royalty who enjoyed the taste and health benefits of the tea leaves.", descriptionTwo: "Over time, the dish became popular among the common people and spread throughout the country. Today, Latpet Thoke is considered a national dish of Myanmar and is enjoyed by locals and visitors alike. It is a unique and flavorful salad that combines the earthy, tangy flavor of pickled tea leaves with a variety of other fresh and crunchy ingredients.", title : "Lat Phat Thoke", subtitle: "Myanmar Traditional Food"),
        HistoryBrain(image: "mote lone", descriptionOne: "Pae Pyote and Nan Pyar were two of General Aung San's favorite traditional Burmese foods. Pae Pyote is a street food made from sticky rice flour and jaggery, rolled into small balls and fried until golden brown, then coated with sesame seeds. Nan Pyar, on the other hand, is a flatbread made from a dough of flour, water, and salt that is rolled out and cooked on a griddle.", descriptionTwo: " Despite being a military leader and politician, General Aung San had a strong attachment to the traditional foods of Myanmar. His fondness for Pae Pyote and Nan Pyar as his preferred breakfast highlights the cultural significance of food in Burmese society. These foods continue to be enjoyed by many in Myanmar today and are an important part of the country's culinary heritage.", title: "Pee Pyote Nan Pyar", subtitle: "Myanmar Traditional Food"),
        HistoryBrain(image: "pal pyote", descriptionOne: "Mote Lone Yay Paw is a traditional snack from Myanmar that has been enjoyed for generations. Made from glutinous rice flour, jaggery, grated coconut, and banana leaves, this small, sticky rice cake is a beloved treat that is often served at festivals and special occasions.", descriptionTwo: "Its popularity has spread beyond Myanmar's borders and is now enjoyed in other Southeast Asian countries. Mote Lone Yay Paw is a delicious example of Myanmar's rich culinary traditions, and its simple yet satisfying flavors continue to delight people today.",title: "Mote Lone Yaya Paw", subtitle: "Myanmar Traditional Food")
    ]
    
    func count() -> Int {
        return history.count
    }
    
    func image(number : Int) -> String {
        return history[number].image
    }
    
    func description(number : Int) -> String {
        return history[number].descriptionOne
    }
}

