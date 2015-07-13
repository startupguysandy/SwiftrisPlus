//
//  MainMenuController.swift
//  Swiftris
//
//  Created by Andrew Bradbury on 15/06/2015.
//  Copyright (c) 2015 Tin Bear Studios. All rights reserved.
//

import UIKit

class MainMenuController: UIViewController {
    
    @IBOutlet weak var classicGameButton: UIButton!
    @IBOutlet weak var timedGameButton: UIButton!
    @IBOutlet weak var leadersViewButton: UIButton!
    @IBOutlet weak var achievementsViewButton: UIButton!
    
    @IBAction func buttonTapped(sender: UIButton) {
        let controller = self.storyboard?.instantiateViewControllerWithIdentifier("gameViewController") as! GameViewController
        
        if sender.tag == 1 {
            controller.timedModeFromMainMenu = true
        } else {
            controller.timedModeFromMainMenu = false
        }
        
        self.presentViewController(controller, animated: true, completion: nil)        
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
}