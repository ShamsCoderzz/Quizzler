//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var question: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueBtn: UIButton!
    @IBOutlet weak var falseBtn: UIButton!
    
    let quiz = [
        ["Approximately one quarter of human bones are in the feet.","True"],
        ["A slug's blood is green.","False"],
        ["he total surface area of two human lungs is approximately 70 square metres.","True"],
        ["West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.","True"]
    ]
    
    var questionNumber = 0 ;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        makeQuiz()
    }

    @IBAction func answerBtnPressed(_ sender: UIButton) {
            
            let userAnswer = sender.currentTitle
            let actualAnswer = quiz[questionNumber][1]
            
            if userAnswer == actualAnswer {
                print("Right")
            }else {
                print("Wrong")
            }
        if  questionNumber < quiz.count {
            makeQuiz()
            questionNumber+=1;
        } else {
            print("finished quiz")
                
        }
    }
    
    func makeQuiz(){
        let totalQuestion : Float = Float(quiz.count)
        let attemptedquestion : Float = Float(questionNumber)
        let persentage : Float = Float(totalQuestion * 100 / attemptedquestion)
        question.text = quiz[questionNumber][0]
        progressBar.progress = persentage
    }
}

