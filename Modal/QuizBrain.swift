struct QuizBrain : Hashable {

    var question : String
    var answer : String
    var multipleChoice : [String]
    
    init(question : String, multipleChoice : [String], answer : String) {
        self.question = question
        self.multipleChoice = multipleChoice
        self.answer = answer
    }
}

