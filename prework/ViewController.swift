//
//  ViewController.swift
//  prework
//
//  Created by Kelly Chen on 12/22/23.
//

import UIKit

class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func changeBackgroundColor(_ sender: UIButton) {
        let random_color = changeColor()
//        let contrast_color = findContrastColor(random_color)
        view.backgroundColor = random_color
        
    }
    
    func changeColor() -> UIColor {
        let red = CGFloat.random(in: 0...1)
        let green = CGFloat.random(in: 0...1)
        let blue = CGFloat.random(in: 0...1)
        return UIColor(red: red, green: green, blue: blue, alpha: 0.5)
    }
    
    func findContrastColor(color: UIColor) -> UIColor {
        var red: CGFloat = 0
        var blue: CGFloat = 0
        var green: CGFloat = 0
        var alpha: CGFloat = 0
        color.getRed(&red, green: &green, blue: &blue, alpha: &alpha)
        
//        let red = (0.299 * color.red)
//        let green = (0.587 * color.green)
//        let blue = (0.114 * color.blue)
        let luminance = ((0.299 * red) + (0.587 * green) + (0.114 * blue))/255
//      luminance > 0.5 is bright color
        let text_color = luminance > 0.5 ? CGFloat(0) : CGFloat(255)
        return UIColor(red: text_color, green: text_color, blue: text_color, alpha: 0.5)
    }
}

