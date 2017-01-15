//
//  ViewController.swift
//  FadingObjects
//
//  Created by G on 15/01/2017.
//  Copyright © 2017 erdgabios. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var segmentedController: UISegmentedControl!
    @IBOutlet weak var switchObject: UISwitch!
    @IBOutlet weak var label4: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func fadeIn(_ sender: Any) {
        
        UIView.animate(withDuration: 2, animations: {
            
            self.label.text = "Fade In"
            self.label.alpha = 1
            self.slider.value = 1
            
        })
        
    }
    
    @IBAction func FadeOut(_ sender: Any) {
        
        UIView.animate(withDuration: 2, animations: {
            
            self.label.text = "Fade Out"
            self.label.alpha = 0
            self.slider.value = 0
            
        })
        
    }
    
    
    @IBAction func alphaSlider(_ sender: Any) {
        
        label.text = "Fade In and Fade Out"
        label.alpha = CGFloat(slider.value)
        
    }
    
    @IBAction func hide(_ sender: Any) {
        
        label2.isHidden = true
    }
    
    @IBAction func reveal(_ sender: Any) {
        
        label2.isHidden = false
    }
    
    
    @IBAction func amIhidden(_ sender: Any) {
        
        if label2.isHidden == true {
            
            label3.text = "Hidden"
            
        } else {
            
            label3.text = "Revealed"
            
        }
        
        
    }
    
    @IBAction func enable(_ sender: Any) {
        
        button.isEnabled = true
        segmentedController.isEnabled = true
        switchObject.isEnabled = true
        
    }
    
    @IBAction func disable(_ sender: Any) {
        
        button.isEnabled = false
        segmentedController.isEnabled = false
        switchObject.isEnabled = false
    }
    
    
    @IBAction func amIenabled(_ sender: Any) {
        
        if switchObject.isEnabled == true {
            
            label4.text = "Switch is enabled"
            
        } else {
            
            label4.text = "Switch is disabled"
            
        }
        
        
    }
    
    
    


}

