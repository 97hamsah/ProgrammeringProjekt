//
//  SecondViewController.swift
//  QuoteQuiz
//
//  Created by Hampus Sahlin Wikström on 2016-03-15.
//  Copyright © 2016 Hampus Sahlin Wikström. All rights reserved.
//

import UIKit


class SecondViewController: UIViewController {
    var dataModel:DataModel!
    
    @IBOutlet weak var Movie: UITextField!
    @IBOutlet weak var Quote1: UITextField!
    @IBOutlet weak var Quote2: UITextField!
    @IBOutlet weak var CorrectQuote: UITextField!
    @IBOutlet weak var Quote4: UITextField!
    
    @IBOutlet weak var Add: UIButton!
    
    var movieText = String()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        Movie.text = movieText
        

    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func Add(sender: AnyObject) {
        Movie.text = dataModel.question6!
    }
    
    
    
}


