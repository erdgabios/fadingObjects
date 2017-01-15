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
    


}

