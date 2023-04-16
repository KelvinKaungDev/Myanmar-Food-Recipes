import AVFoundation
import SwiftUI

struct SingleTopicQuiz {
    
    var quizzNumber = 0
    var score : Int = 0
    var topicNumber : Int
    var player : AVAudioPlayer!
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    let quizs = [
        [QuizBrain(question: "Which is the largest organ in the human body?", multipleChoice: ["Heart", "Skin", "Large Intestine"], answer: "Skin", sound : true),
          QuizBrain(question: "Five dollars is worth how many nickels?", multipleChoice: ["25", "50", "100"], answer: "100", sound : true),
          QuizBrain(question: "What do the letters in the GMT time zone stand for?", multipleChoice: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], answer: "Greenwich Mean Time", sound : true),
         QuizBrain(question: "Your Total Score is", multipleChoice: ["RETAKE"], answer: "", sound : false)
        ],
        [QuizBrain(question: "What is the French word for 'hat'?", multipleChoice: ["Chapeau", "Écharpe", "Bonnet"], answer: "Chapeau", sound : true),
          QuizBrain(question: "In past times, what would a gentleman keep in his fob pocket?", multipleChoice: ["Notebook", "Handkerchief", "Watch"], answer: "Watch", sound : true),
          QuizBrain(question: "How would one say goodbye in Spanish?", multipleChoice: ["Au Revoir", "Adiós", "Salir"], answer: "Adiós", sound : true),
          QuizBrain(question: "Your Total Score is", multipleChoice: ["RETAKE"], answer: "", sound : false),
         QuizBrain(question: "Your Total Score is", multipleChoice: ["RETAKE"], answer: "", sound : false)
        ],
        [QuizBrain(question: "Which is the largest organ in the human body?", multipleChoice: ["Heart", "Skin", "Large Intestine"], answer: "Skin", sound : true),
          QuizBrain(question: "Five dollars is worth how many nickels?", multipleChoice: ["25", "50", "100"], answer: "100", sound : true),
          QuizBrain(question: "What do the letters in the GMT time zone stand for?", multipleChoice: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], answer: "Greenwich Mean Time", sound : true),
         QuizBrain(question: "Your Total Score is", multipleChoice: ["RETAKE"], answer: "", sound : false)
        ],
        [QuizBrain(question: "Which is the largest organ in the human body?", multipleChoice: ["Heart", "Skin", "Large Intestine"], answer: "Skin", sound : true),
          QuizBrain(question: "Five dollars is worth how many nickels?", multipleChoice: ["25", "50", "100"], answer: "100", sound : true),
          QuizBrain(question: "What do the letters in the GMT time zone stand for?", multipleChoice: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], answer: "Greenwich Mean Time", sound : true),
         QuizBrain(question: "Your Total Score is", multipleChoice: ["RETAKE"], answer: "", sound : false)
        ],
    ]
    
    func quizzQuestionCount() -> Int {
        return quizs[topicNumber].count - 1
    }
    
    func sound() -> Bool {
        return quizs[topicNumber][quizzNumber].sound
    }
    
    func quizAnswerButton() -> [String] {
        return quizs[topicNumber][quizzNumber].multipleChoice
    }
    
    mutating func checkUserAnswer(_ userAnswer : String) -> Bool {
        if (userAnswer != quizs[topicNumber][quizzNumber].answer) {
            return false
        }

        score += 1
        return true
    }
    
    func totalScore() -> Int {
        return score
    }
    
    mutating func quizNextQuestion() {
        if quizzNumber + 1 < quizs[topicNumber].count {
            quizzNumber += 1
        }
        else {
            quizzNumber = 0
            score = 0
        }
    }
    
    func getQuestionText() -> String {
        return quizs[topicNumber][quizzNumber].question
    }
    
    func getQuestionAnswer() -> String {
        return quizs[topicNumber][quizzNumber].answer
    }
    
    func showProgress() -> Float {
        return Float(quizzNumber) / Float(quizs[topicNumber].count)
    }
    
    func overView() -> Bool {
        let result : Float = ( Float(quizs.count) - 1 ) / Float(quizs.count)
        
        if showProgress() != result {
            return false
        }
        
        return true
    }
    
    mutating func audioPlay(sound : String) {
        if self.sound() {
            let url = Bundle.main.url(forResource: sound, withExtension: "mp3")
            player = try! AVAudioPlayer(contentsOf: url!)
            player.play()
        }
    }
}
