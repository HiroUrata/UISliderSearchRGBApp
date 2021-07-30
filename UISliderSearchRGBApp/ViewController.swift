//
//  ViewController.swift
//  UISliderSearchRGBApp
//
//  Created on 2021/07/30.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorDebugView: UIView!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var redValueLabel: UILabel!
    @IBOutlet weak var greenValueLabel: UILabel!
    @IBOutlet weak var blueValueLabel: UILabel!
    
    let colorConverterModel = ColorConvertModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        colorDebugView.backgroundColor =  UIColor.black
        
        redSlider.value = 0.00
        redSlider.minimumValue = 0.00
        redSlider.maximumValue = 1.00
        
        greenSlider.value = 0.00
        greenSlider.minimumValue = 0.00
        greenSlider.maximumValue = 1.00
        
        blueSlider.value = 0.00
        blueSlider.minimumValue = 0.00
        blueSlider.maximumValue = 1.00
        
    }

    @IBAction func redSlide(_ sender: UISlider) {
        
        colorConverterModel.colorConvert(redValue: CGFloat(sender.value), greenValue: CGFloat(greenSlider.value), blueValue: CGFloat(blueSlider.value), targetView: colorDebugView)
        
        redValueLabel.text = String(floor(sender.value * 100) / 100)
        
    }
    
    @IBAction func greenSlide(_ sender: UISlider) {
        
        colorConverterModel.colorConvert(redValue: CGFloat(redSlider.value), greenValue: CGFloat(sender.value), blueValue: CGFloat(blueSlider.value), targetView: colorDebugView)
        
        greenValueLabel.text =  String(floor(sender.value * 100) / 100)
        
    }
    
    @IBAction func blueSlide(_ sender: UISlider) {
        
        colorConverterModel.colorConvert(redValue: CGFloat(redSlider.value), greenValue: CGFloat(greenSlider.value), blueValue: CGFloat(sender.value), targetView: colorDebugView)
     
        blueValueLabel.text =  String(floor(sender.value * 100) / 100)
        
    }
    
    
}

