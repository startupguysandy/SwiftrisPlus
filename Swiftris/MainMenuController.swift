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
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var DestViewController : GameViewController = segue.destinationViewController as! GameViewController
        
        DestViewController.timedModeFromMainMenu = false
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
}
