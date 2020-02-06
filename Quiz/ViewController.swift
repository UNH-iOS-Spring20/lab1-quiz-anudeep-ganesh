//
//  ViewController.swift
//  Quiz
//
//  Created by Ramireddy, Anudeep Reddy on 2/5/20.
//  Copyright © 2020 Ramireddy, Anudeep Reddy. All rights reserved.
//

import UIKit
import os

class ViewController: UIViewController {
    
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!
    
    let questions:[String] = [
        "What is the Biggest Country?",
        "What is the Biggest Ocean?",
        "What is the Longest River?"
    ]
    
    let answers:[String] = [
        "Russia",
        "Pacific",
        "Nile"
    ]
    
    var currentQuestionIndex: Int = 0
    
    @IBAction func showNextQuestion(_ sender:UIButton){
        os_log("Showing Next Question")
        currentQuestionIndex += 1
        if currentQuestionIndex == questions.count{
            currentQuestionIndex = 0
        }
        
        let question:String  = questions[currentQuestionIndex]
        questionLabel.text = question
        answerLabel.text = "???"
    }
    
    @IBAction func showAnswer(_ sender:UIButton){
        os_log("Showing Answer")
        let answer:String  = answers[currentQuestionIndex]
        answerLabel.text = answer
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        os_log("This is a test log")
        
        questionLabel.text = questions[currentQuestionIndex]
        answerLabel.text = "???"
    }


}

