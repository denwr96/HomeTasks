//
//  TestViewController.swift
//  WeekDayFinder
//
//  Created by deniss.lobacs on 15/11/2021.
//

import UIKit

class TestViewController: UIViewController {
 
    
    @IBOutlet var slider: UISlider!
    @IBOutlet var switchOutlet: UISwitch!
    @IBOutlet var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        switchOutlet.isOn = false
        textLabel.text = ""

        view.backgroundColor = .white
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        let x = Int(round(slider.value))
        
        switch x {
        case 0...3:
            textLabel.text = "Day was awful 😒"
        case 4...7:
            textLabel.text = "Day was normal 🙂"
        case 8...10:
            textLabel.text = "Day was fine 🤩"
        default:
            textLabel.text = "Do smth..."
        }
        
    }
    @IBAction func changeBackground(_ sender: Any) {
        
        if switchOutlet.isOn == true {
            view.backgroundColor = .blue
        } else {
            view.backgroundColor = .white
        }
    }
  
    @IBAction func goHome(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
        navigationController?.popViewController(animated: true)
    }
    
    
    @IBAction func sliderValueChanged(_ sender: Any) {
//        let x = Int(round(slider.value))
//        textLabel.text = String(x)
    }
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
