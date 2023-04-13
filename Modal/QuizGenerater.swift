import AVFoundation
import SwiftUI

struct QuizzGenerater {
    
    var quizzNumber = 0
    var score : Int = 0
    var player : AVAudioPlayer!
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    let quizs = [
        QuizBrain(question: "Which is the largest organ in the human body?", multipleChoice: ["Heart", "Skin", "Large Intestine"], answer: "Skin", sound : true),
        QuizBrain(question: "Five dollars is worth how many nickels?", multipleChoice: ["25", "50", "100"], answer: "100", sound : true),
        QuizBrain(question: "What do the letters in the GMT time zone stand for?", multipleChoice: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], answer: "Greenwich Mean Time", sound : true),
        QuizBrain(question: "What is the French word for 'hat'?", multipleChoice: ["Chapeau", "Écharpe", "Bonnet"], answer: "Chapeau", sound : true),
        QuizBrain(question: "In past times, what would a gentleman keep in his fob pocket?", multipleChoice: ["Notebook", "Handkerchief", "Watch"], answer: "Watch", sound : true),
        QuizBrain(question: "How would one say goodbye in Spanish?", multipleChoice: ["Au Revoir", "Adiós", "Salir"], answer: "Adiós", sound : true),
        QuizBrain(question: "Which of these colours is NOT featured in the logo for Google?", multipleChoice: ["Green", "Orange", "Blue"], answer: "Orange", sound : true),
        QuizBrain(question: "What alcoholic drink is made from molasses?", multipleChoice: ["Rum", "Whisky", "Gin"], answer : "Rum", sound : true),
        QuizBrain(question: "What type of animal was Harambe?", multipleChoice: ["Panda", "Gorilla", "Crocodile"], answer: "Gorilla", sound : true),
        QuizBrain(question: "Where is Tasmania located?", multipleChoice: ["Indonesia", "Australia", "Scotland"], answer: "Australia", sound : true),
        QuizBrain(question: "Your Total Score is", multipleChoice: ["RETAKE"], answer: "", sound : false)
    ]
    
    func quizzQuestionCount() -> Int {
        return quizs.count - 1
    }
    
    func sound() -> Bool {
        return quizs[quizzNumber].sound
    }
    
    func quizAnswerButton() -> [String] {
        return quizs[quizzNumber].multipleChoice
    }
    
    mutating func checkUserAnswer(_ userAnswer : String) -> Bool {
        if (userAnswer != quizs[quizzNumber].answer) {
            return false
        }

        score += 1
        return true
    }
    
    func totalScore() -> Int {
        return score
    }
    
    mutating func quizNextQuestion() {
        if quizzNumber + 1 < quizs.count {
            quizzNumber += 1
        }
        else {
            quizzNumber = 0
            score = 0
        }
    }
    
    func getQuestionText() -> String {
        return quizs[quizzNumber].question
    }
    
    func getQuestionAnswer() -> String {
        return quizs[quizzNumber].answer
    }
    
    func showProgress() -> Float {
        return Float(quizzNumber) / Float(quizs.count)
    }
    
    func overView() -> Bool {
        let result : Float = ( Float(quizs.count) - 1 ) / Float(quizs.count)
        
        if showProgress() != result {
            return false
        }
        
        return true
    }
    
    func scoreCheck(score : Int) -> String {
        
        switch score {
            case 8..<10 :
                return "Gread Job Your Score is \(score). Now You know famous about Myanmar"
            case 5..<7 :
                return "Not Bad Your Score is \(score)"
            default :
                return "Sorry You Score is \(score). You should read article and retake"
        }
        
    }
    
    mutating func audioPlay(sound : String) {
        if self.sound() {
            let url = Bundle.main.url(forResource: sound, withExtension: "mp3")
            player = try! AVAudioPlayer(contentsOf: url!)
            player.play()
        }
    }
}

