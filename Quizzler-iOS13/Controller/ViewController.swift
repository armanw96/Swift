//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit





class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!

    @IBOutlet weak var progressBar: UIProgressView!
    
    
    @IBOutlet weak var trueButton: UIButton!
    
    @IBOutlet weak var falseButton: UIButton!
    
    var quizBrain = QuizBrain()
    
    
    @IBOutlet var scoreLabel: UILabel!
    

        
    @IBOutlet weak var Choice3: UIButton!
    
   
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        updateUI()
        
        
        
        
    }


    @IBAction func asnwerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle!
        
        // this equal the string true or the string false
        
        
        // for some reason you need to use small q instead of big "Q"
        let userGotItRight = quizBrain.checkAnswer(userAnswer)
        
    
        
        
        

        
        if userGotItRight{
            sender.backgroundColor = UIColor.green.withAlphaComponent(0.5)
            
        }else{
            sender.backgroundColor = UIColor.red.withAlphaComponent(0.5)
        }
        
        // the reason its hard to put this into code is because whenever you do a < statement the code will run to 3 no matter what you do to it hence you have to make it so that whatever next for the code to run has to equal to the question as well other wise it shouldn't run. this is what i mean by that.
        
        // you also use the count method so that it changes the string into an integer make sure you remember this because this has a lot of implications to making any apps downm the line.
        
        // track the question number
        
        quizBrain.nextQuestion()
    
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
            
        
    }
    
    @objc func updateUI() {
        let answerChoices = quizBrain.getAnswer()
        trueButton.setTitle(answerChoices[0], for: .normal)
        falseButton.setTitle(answerChoices[1], for: .normal)
        Choice3.setTitle(answerChoices[2], for: .normal)
      
        
        questionLabel.text = quizBrain.getQuestionText()
        progressBar.progress = quizBrain.getProgressBar()
        scoreLabel.text = "Score: \(quizBrain.getScore())"
        
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
        Choice3.backgroundColor = UIColor.clear
        
        // the reason we got to put a one in there is because questionNumber starts with 0 hence if you divide anything with 0 it would never equal to 1. so you have to add 1 so that it can reach full bar at the end of the code. 
        
        
    }
    
    
   
    
}

