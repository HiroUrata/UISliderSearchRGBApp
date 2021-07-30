//
//  ColorConverterModel.swift
//  UISliderSearchRGBApp
//
//  Created on 2021/07/30.
//

import Foundation
import UIKit

class ColorConvertModel{
    
    func colorConvert(redValue:CGFloat,greenValue:CGFloat,blueValue:CGFloat,targetView:UIView){
        
        targetView.backgroundColor = UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: 1)
        
    }
    
}
