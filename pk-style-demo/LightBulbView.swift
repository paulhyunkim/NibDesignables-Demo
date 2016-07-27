//
//  LightBulbView.swift
//  pk-style-demo
//
//  Created by Paul Kim on 7/26/16.
//  Copyright © 2016 Paul Kim. All rights reserved.
//

import UIKit

@IBDesignable class LightBulbView: NibDesignableView {

    @IBOutlet weak var bulbView: UIView!
    
    @IBInspectable var onColor: UIColor = UIColor.greenColor()
    @IBInspectable var offColor: UIColor = UIColor.redColor()
    @IBInspectable var state: Bool = false
    
    var counter = 0
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupView()
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        setupView()
    }
    
    func setupView() {
//        bulbView.layer.cornerRadius = bulbView.bounds.size.height / 2
//        bulbView.layer.masksToBounds = true
        bulbView.backgroundColor = state ? onColor : offColor
    }
    
    func blink(numberOfTimes: Int) {
        counter = numberOfTimes * 2
        changeColor()
    }
    
    func changeColor() {
        if counter != 0 {
            dispatch_after(dispatch_time(DISPATCH_TIME_NOW, 150000000), dispatch_get_main_queue()) {
                self.state = !self.state
                self.bulbView.backgroundColor = self.state ? self.onColor : self.offColor
                self.counter -= 1
                self.changeColor()
            }
        }
    }

}
