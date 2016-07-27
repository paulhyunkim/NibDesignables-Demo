//
//  PokerView.swift
//  pk-style-demo
//
//  Created by Paul Kim on 7/22/16.
//  Copyright © 2016 Paul Kim. All rights reserved.
//

import UIKit

@IBDesignable class PokerView: NibDesignableView {

    @IBInspectable var style: String = "Default" {
        didSet {
//            let cgColor = MyStyle(rawValue: style)?.color
//            numberPadView.designableView.backgroundColor = UIColor(CGColor: cgColor!)
            /* selectedNumberLabel.textColor = UIColor(CGColor: cgColor!) */
        }
    }
    
    @IBInspectable var selectedNumberFontSize: CGFloat = 250 {
        didSet {
            selectedNumberLabel.font = UIFont.boldSystemFontOfSize(selectedNumberFontSize)
        }
    }
    
    @IBOutlet weak var numberPadView: NumberPadView!
    @IBOutlet weak var selectedNumberLabel: UILabel!
    
    override func awakeFromNib() {
        numberPadView.delegate = self
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        self.backgroundColor = UIColor.redColor()
    }
    
}

extension PokerView: NumberPadDelegate {
    
    func numberPadDidPressButton(button: UIButton) {
        selectedNumberLabel.text = button.titleLabel?.text
    }
    
}
