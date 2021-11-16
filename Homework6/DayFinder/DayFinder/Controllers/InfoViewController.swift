//
//  InfoViewController.swift
//  DayFinder
//
//  Created by deniss.lobacs on 15/11/2021.
//

import UIKit

class InfoViewController: UIViewController {
    
    @IBOutlet weak var appInfoLabel: UILabel!
    @IBOutlet weak var appDescLabel: UILabel!
    
    var infoText = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if !infoText.isEmpty{
            appDescLabel.text = infoText
        }
    }
    
    
}
