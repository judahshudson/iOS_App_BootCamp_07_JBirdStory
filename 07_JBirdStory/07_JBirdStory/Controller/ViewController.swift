//
//  ViewController.swift
//  07_JBirdStory
//
//  Created by Judah Hudson on 1/17/20.
//  Copyright © 2020 Judah Hudson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //variables, uiButtons
    @IBOutlet weak var storyText: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }
    
    @IBAction func choiceMade(_ sender: UIButton) {
        storyBrain.nextStory(sender.currentTitle!)
        updateUI()
    }
    
    func updateUI() {
        storyText.text = storyBrain.getStory() // update top story text
        choice1Button.setTitle(storyBrain.getChoice1(), for: .normal)// update button 1 text
        choice2Button.setTitle(storyBrain.getChoice2(), for: .normal)// update button 2 text
    }

}
