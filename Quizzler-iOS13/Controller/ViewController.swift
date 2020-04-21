//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Yazan Almatar on 04/20/2020.
//  Copyright © 2020 Yazan Almatar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    var timer = Timer()
    var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    @objc  func updateUI() {
        questionLabel.text = quizBrain.getQuestionText()
        falseButton.backgroundColor = UIColor.clear
        trueButton.backgroundColor = UIColor.clear
        progressBar.setProgress(quizBrain.getProgress(), animated: true)
        scoreLabel.text = "Score: \(quizBrain.getScore())"
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle! //True || False
        let userGotItRight = quizBrain.checkAnswer(userAnswer)
        
        if userGotItRight {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        quizBrain.nextQuestion()
        timer = Timer.scheduledTimer(timeInterval:0.2, target:self, selector: #selector(updateUI),userInfo:nil,repeats: false)
    }
    
    
}

