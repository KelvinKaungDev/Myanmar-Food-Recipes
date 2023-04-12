import SwiftUI

struct QuizCollections : View {
    
    @State var quiz : QuizzGenerater
    @State private var progress: Float = 0.0
    
    var body : some View {
        VStack {
           
            VStack {
                if !quiz.retakeButton() {
                    Text("Your Score")
                        .font(.title)
                        .foregroundColor(.brown)
                    
                    Text("\(quiz.totalScore()) out of \(quiz.quizzQuestionCount())")
                        .font(.title3)
                        .foregroundColor(.brown)
                }
            }

            Spacer()
            
            VStack {
                VStack(alignment: .leading,spacing: 5) {
                    
                    if quiz.retakeButton() {
                        let score = quiz.totalScore()
                        let result = quiz.scoreCheck(score: score)
                        
                        Text(result)
                            .font(.system(size:25))
                            .padding(10)
                            .lineSpacing(3)
                    } else {
                        Text(quiz.getQuestionText())
                            .font(.system(size:25))
                            .padding(10)
                            .lineSpacing(3)
                    }
                    
                }
                .foregroundColor(.brown)
                .padding(15)
            }
            
            Spacer()
            
            VStack {
                
                ForEach(Array(quiz.quizAnswerButton().enumerated()), id: \.offset) { index, question in
                    Button(action: {
                        let UserAnswer = question
                        let result = quiz.checkUserAnswer(UserAnswer)
                        
                        if result {
                            quiz.audioPlay(sound: "C")
                        }
                                            
                        quiz.quizNextQuestion()
                        progress = quiz.showProgress()
                   }) {
                       HStack {
                           Spacer()
                           Text(question)
                               .fontWeight(.semibold)
                               .foregroundColor(.white)
                           Spacer()
                       }
                       .padding()
                       .background(.brown)
                       .cornerRadius(10)
                       .frame(width: 280, height: 50, alignment: .center)
                   }
                }
            }
            
            VStack {
                ProgressView(value: progress)
                    .padding()
            }
        }
        
    }
}


