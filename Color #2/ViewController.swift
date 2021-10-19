//
//  ViewController.swift
//  Color #2
//
//  Created by John Kennedy on 10/16/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorView: UIView!
  
    @IBAction func switchChanged(_ sender: UISwitch) {
        if sender.isOn {
            updateColor()
        } else {
            updateColor()
       }
    }

    @IBOutlet weak var redSwitch: UISwitch!
    @IBOutlet weak var greenSwitch: UISwitch!
    @IBOutlet weak var blueSwitch: UISwitch!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateColor()
    
        colorView.layer.borderWidth = 5
        colorView.layer.cornerRadius = 20
        colorView.layer.borderColor =
           UIColor.black.cgColor
 
    }
    
    @IBOutlet weak var reset: UIButton!
   
    @IBAction func reset(_ sender: Any) {
        
        
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        
        if redSwitch.isOn {
            red = 0
        }
        if greenSwitch.isOn {
            green = 0
        }
        if blueSwitch.isOn {
            blue = 0
            
        } else {
            colorView.backgroundColor = .black
        }
        let color = UIColor(red: red, green: green,
           blue: blue, alpha: 1)
        colorView.backgroundColor = color
    
    }
    
    @IBAction func sliderChanged(_ sender: UISlider) {
    updateColor()
    }
    
        
    func updateColor() {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        if redSwitch.isOn {
            red = CGFloat(redSlider.value)
        }
        if greenSwitch.isOn {
            green = CGFloat(greenSlider.value)
        }
        if blueSwitch.isOn {
            blue = CGFloat(blueSlider.value)        } else {
            colorView.backgroundColor = .black
        }
        let color = UIColor(red: red, green: green,
           blue: blue, alpha: 1)
        colorView.backgroundColor = color
    }
    
    
   
 
}


