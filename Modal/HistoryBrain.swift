struct HistoryBrain : Hashable {
    
    var image : String
    var title : String
    var subtitle : String
    var descriptionOne : String
    var descriptionTwo : String
    
    init(image: String, descriptionOne: String, descriptionTwo: String, title: String, subtitle : String) {
        self.image = image
        self.title = title
        self.subtitle = subtitle
        self.descriptionOne = descriptionOne
        self.descriptionTwo = descriptionTwo
    }
}

