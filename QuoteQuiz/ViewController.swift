//
//  ViewController.swift
//  QuoteQuiz
//
//  Created by Hampus Sahlin Wikström on 2016-03-08.
//  Copyright © 2016 Hampus Sahlin Wikström. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    
    @IBOutlet weak var QuestionLabel: UILabel!
    @IBOutlet weak var Button1: UIButton!
    @IBOutlet weak var Button2: UIButton!
    @IBOutlet weak var Button3: UIButton!
    @IBOutlet weak var Button4: UIButton!
    
    @IBOutlet weak var LabelEnd: UILabel!
    
    @IBOutlet weak var NextButton: UIButton!
    
    @IBOutlet weak var AddButton: UIButton!
    
    var CorrectAnswer = String()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        Hide()
        
        RandomQuestions()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    
    func RandomQuestions(){
        
        var RandomNumber = arc4random() % 5
        RandomNumber += 1
        
        switch(RandomNumber){
        case 1:
            QuestionLabel.text = "\"No, I am your father\""
            Button1.setTitle("The Godfather", forState: UIControlState.Normal)
            Button2.setTitle("The Empire Strikes Back", forState: UIControlState.Normal)
            Button3.setTitle("Hollywood Chihuahua", forState: UIControlState.Normal)
            Button4.setTitle("Rambo", forState: UIControlState.Normal)
            CorrectAnswer = "2"
            
            break
        case 2:
            QuestionLabel.text = "\"Get to the chopper\""
            Button1.setTitle("Independence Day", forState: UIControlState.Normal)
            Button2.setTitle("The Avengers", forState: UIControlState.Normal)
            Button3.setTitle("Yes Man", forState: UIControlState.Normal)
            Button4.setTitle("Predator", forState: UIControlState.Normal)
            CorrectAnswer = "4"
            break
        case 3:
            QuestionLabel.text = "\"Just keep Swimming\""
            Button1.setTitle("Finding Nemo", forState: UIControlState.Normal)
            Button2.setTitle("The Expendables", forState: UIControlState.Normal)
            Button3.setTitle("Pulp Fiction", forState: UIControlState.Normal)
            Button4.setTitle("Accepted", forState: UIControlState.Normal)
            CorrectAnswer = "1"
            break
        case 4:
            QuestionLabel.text = "\"Nobody puts Baby in a corner\""
            Button1.setTitle("Fifty Shades Of Grey", forState: UIControlState.Normal)
            Button2.setTitle("Big Momma's House", forState: UIControlState.Normal)
            Button3.setTitle("Big Hero 6", forState: UIControlState.Normal)
            Button4.setTitle("Dirty Dancing", forState: UIControlState.Normal)
            CorrectAnswer = "4"
            break
        case 5:
            QuestionLabel.text = "\"Say hello to my little friend\""
            Button1.setTitle("Alien", forState: UIControlState.Normal)
            Button2.setTitle("The lion king", forState: UIControlState.Normal)
            Button3.setTitle("Scarface", forState: UIControlState.Normal)
            Button4.setTitle("Fight club", forState: UIControlState.Normal)
            CorrectAnswer = "3"
            break
        
            
        default:
            
            break
        }
    
    
    }
    //Gömmer "Next"knappen samt LabelEnd Texten
    func Hide(){
        LabelEnd.hidden = true
        NextButton.hidden = true
    }
    
    func UnHideButton(){
        NextButton.hidden = false
    }
    
    func UnHideLabel(){
        LabelEnd.hidden = false
    }
    
    func HideText(){
        Button1.hidden = true
    }
    
    func AddQuestions(sender: UIButton!) {
        
    }
    
    @IBAction func Button1Action(sender: AnyObject) {
        
        
        if (CorrectAnswer == "1"){
            LabelEnd.text = "You are correct!"
            UnHideButton()
        }
        else {
            LabelEnd.text = "You are wrong!"
            UnHideLabel()
        }
    }
    @IBAction func Button2Action(sender: AnyObject) {
        
        
        if (CorrectAnswer == "2"){
            LabelEnd.text = "You are correct!"
            UnHideButton()
        }
        else {
            LabelEnd.text = "You are wrong!"
            UnHideLabel()
        }

    }
    @IBAction func Button3Action(sender: AnyObject) {
        
        if (CorrectAnswer == "3"){
            LabelEnd.text = "You are correct!"
            UnHideButton()
        }
        else {
            LabelEnd.text = "You are wrong!"
            UnHideLabel()
        }

    }
    @IBAction func Button4Action(sender: AnyObject) {
        
        if (CorrectAnswer == "4"){
            LabelEnd.text = "You are correct!"
            UnHideButton()
        }
        else {
            LabelEnd.text = "You are wrong!"
            UnHideLabel()
        }

    }
    
    @IBAction func Next(sender: AnyObject) {
        RandomQuestions()
        LabelEnd.text = ""
        NextButton.hidden = true
    }
    
    


}



