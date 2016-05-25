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
    
    
    var CorrectAnswer:String!
    
    var dataModel:DataModel!
    var viewTwo:SecondViewController!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        Hide()
        
        dataModel = DataModel()
        
        RandomQuestions()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    
    func RandomQuestions(){
        
        var randomNumber = arc4random() % 5
        randomNumber += 1
      
        switch(randomNumber){
        case 1:
            QuestionLabel.text = dataModel.question1
            Button1.setTitle(dataModel.alt11, forState: UIControlState.Normal)
            Button2.setTitle(dataModel.alt12, forState: UIControlState.Normal)
            Button3.setTitle(dataModel.alt13, forState: UIControlState.Normal)
            Button4.setTitle(dataModel.alt14, forState: UIControlState.Normal)
            CorrectAnswer = dataModel.alt12
            
            break
        case 2:
            QuestionLabel.text = dataModel.question2
            Button1.setTitle(dataModel.alt21, forState: UIControlState.Normal)
            Button2.setTitle(dataModel.alt22, forState: UIControlState.Normal)
            Button3.setTitle(dataModel.alt23, forState: UIControlState.Normal)
            Button4.setTitle(dataModel.alt24, forState: UIControlState.Normal)
            CorrectAnswer = dataModel.alt24
            break
        case 3:
            QuestionLabel.text = dataModel.question3
            Button1.setTitle(dataModel.alt31, forState: UIControlState.Normal)
            Button2.setTitle(dataModel.alt32, forState: UIControlState.Normal)
            Button3.setTitle(dataModel.alt33, forState: UIControlState.Normal)
            Button4.setTitle(dataModel.alt34, forState: UIControlState.Normal)
            CorrectAnswer = dataModel.alt31
            break
        case 4:
            QuestionLabel.text = dataModel.question4
            Button1.setTitle(dataModel.alt41, forState: UIControlState.Normal)
            Button2.setTitle(dataModel.alt42, forState: UIControlState.Normal)
            Button3.setTitle(dataModel.alt43, forState: UIControlState.Normal)
            Button4.setTitle(dataModel.alt44, forState: UIControlState.Normal)
            CorrectAnswer = dataModel.alt44
            break
        case 5:
            QuestionLabel.text = dataModel.question5
            Button1.setTitle(dataModel.alt51, forState: UIControlState.Normal)
            Button2.setTitle(dataModel.alt52, forState: UIControlState.Normal)
            Button3.setTitle(dataModel.alt53, forState: UIControlState.Normal)
            Button4.setTitle(dataModel.alt54, forState: UIControlState.Normal)
            CorrectAnswer = dataModel.alt53
            break
        case 6:
            QuestionLabel.text = dataModel.question6
            Button1.setTitle(dataModel.alt61, forState: UIControlState.Normal)
            Button2.setTitle(dataModel.alt62, forState: UIControlState.Normal)
            Button3.setTitle(dataModel.alt63, forState: UIControlState.Normal)
            Button4.setTitle(dataModel.alt64, forState: UIControlState.Normal)
            CorrectAnswer = dataModel.alt63
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

    
    @IBAction func Button1Action(sender: AnyObject) {
        print("korrekt svar: \(CorrectAnswer)")
        
        if (CorrectAnswer == Button1.titleLabel?.text){
            LabelEnd.text = "You are correct!"
            UnHideLabel()
            UnHideButton()
        }
        else {
            LabelEnd.text = "You are wrong!"
            UnHideLabel()
        }
    }
    @IBAction func Button2Action(sender: AnyObject) {
        print("korrekt svar: \(CorrectAnswer)")
        if (CorrectAnswer == Button2.titleLabel?.text){
            LabelEnd.text = "You are correct!"
            UnHideLabel()
            UnHideButton()
        }
        else {
            LabelEnd.text = "You are wrong!"
            UnHideLabel()
        }

    }
    @IBAction func Button3Action(sender: AnyObject) {
        print("korrekt svar: \(CorrectAnswer)")
        
        if (CorrectAnswer == Button3.titleLabel?.text){
            LabelEnd.text = "You are correct!"
            UnHideLabel()
            UnHideButton()
        }
        else {
            LabelEnd.text = "You are wrong!"
            UnHideLabel()
        }

    }
    @IBAction func Button4Action(sender: AnyObject) {
        print("korrekt svar: \(CorrectAnswer)")
        
        if (CorrectAnswer == Button4.titleLabel?.text){
            LabelEnd.text = "You are correct!"
            UnHideLabel()
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
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "SegueDest") {
            
            let navController = segue.destinationViewController as? UINavigationController;
            
            let controller = navController!.topViewController as? SecondViewController;
            
            controller!.dataModel = dataModel
        }
    }
    


}



