//
//  ViewController.swift
//  Destini
//
//  Created by Ales Shenshin on 17/12/2018.
//  Copyright (c) 2018 Shenshin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var stories = Stories()
    
    
    // UI Elements linked to the storyboard
    @IBOutlet weak var topButton: UIButton!         // Has TAG = 1
    @IBOutlet weak var bottomButton: UIButton!      // Has TAG = 2
    @IBOutlet weak var storyTextView: UILabel!
    
    // TODO Step 5: Initialise instance variables here
    //var storyNumber : Int = 1
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // TODO Step 3: Set the text for the storyTextView, topButton, bottomButton, and to T1_Story, T1_Ans1, and T1_Ans2
        updateUI(story: 1)
        
    }
    
    func updateUI(story: Int){
        storyTextView.text = stories[story-1].storyText
        let answer1 = stories[story-1].answers[0]
        let answer2 = stories[story-1].answers[1]
        if answer1.0 != "" {
            topButton.setTitle(answer1.0, for: .normal)
            topButton.tag = answer1.1
        } else {
            //topButton.setTitle("", for: .normal)
            topButton.alpha = 0.1
            topButton.isEnabled = false
            
        }
        if answer2.0 != "" {
            bottomButton.setTitle(answer2.0, for: .normal)
            bottomButton.tag = answer2.1
        } else {
            //bottomButton.setTitle("", for: .normal)
            bottomButton.alpha = 0.1
            bottomButton.isEnabled = false
        }
        
    }
    
    // User presses one of the buttons
    @IBAction func buttonPressed(_ sender: UIButton) {
    
        updateUI(story: sender.tag)
        // TODO Step 4: Write an IF-Statement to update the views
                
        // TODO Step 6: Modify the IF-Statement to complete the story
        
    
    }
    
    @IBAction func backButtonPressed(_ sender: Any) {
        updateUI(story: 1)
        topButton.alpha = 1
        bottomButton.alpha = 1
        topButton.isEnabled = true
        bottomButton.isEnabled = true
    }
    


}

