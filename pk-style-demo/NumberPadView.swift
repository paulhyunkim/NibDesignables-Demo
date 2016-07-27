//
//  NumberPadView.swift
//  pk-style-demo
//
//  Created by Paul Kim on 7/22/16.
//  Copyright © 2016 Paul Kim. All rights reserved.
//

import UIKit

protocol NumberPadDelegate: class {
    func numberPadDidPressButton(button: UIButton)
}

@IBDesignable class NumberPadView: NibDesignableView {

    weak var delegate: NumberPadDelegate?
    
    @IBInspectable var buttonBackgroundColor: UIColor = UIColor.grayColor()
    @IBInspectable var buttonTextColor: UIColor = UIColor.blackColor()
    @IBInspectable var buttonCornerRadius: CGFloat = 0
    /* Comma separated list of strings to display on buttons */
    @IBInspectable var buttonTitles: String = "Title"
    @IBInspectable var numberOfColumns: Int = 1
    @IBInspectable var numberOfRows: Int = 1
    @IBInspectable var interButtonSpacing: CGFloat = 0
    @IBInspectable var numberPadPadding: CGFloat = 0
    
    var didSetupView: Bool = false
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        if !didSetupView {
            setupView()
        }
    }
    
    func didPressButton(button: UIButton) {
        guard let delegate = delegate else {
            return
        }
        delegate.numberPadDidPressButton(button)
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        setupView()
    }
    
    func setupView() {
        
        let titles = buttonTitles.componentsSeparatedByString(",")
        
        let height = self.bounds.size.height
        let width = self.bounds.size.width
//        let numberOfButtons = numberOfColumns * numberOfRows
        let buttonWidth = (width - (numberPadPadding * 2) - (interButtonSpacing * CGFloat(numberOfColumns - 1))) / CGFloat(numberOfColumns)
        let buttonHeight = (height - (numberPadPadding * 2) - (interButtonSpacing * CGFloat(numberOfRows - 1))) / CGFloat(numberOfRows)
        let buttonSize = CGSize(width: buttonWidth, height: buttonHeight)
        
        var count = 0
        for rowIndex in 0..<numberOfRows {
            for columnIndex in 0..<numberOfColumns {
                let xOrigin = numberPadPadding + ((buttonSize.width + interButtonSpacing) * CGFloat(columnIndex))
                let yOrigin = numberPadPadding + ((buttonSize.height + interButtonSpacing) * CGFloat(rowIndex))
                let origin = CGPoint(x: xOrigin, y: yOrigin)
                let buttonFrame = CGRect(origin: origin, size: buttonSize)
                
                let button = UIButton(frame: buttonFrame)
                button.backgroundColor = buttonBackgroundColor
                let buttonTitle = titles[count]
                button.setTitle(buttonTitle, forState: .Normal)
                button.setTitleColor(buttonTextColor, forState: .Normal)
                button.addTarget(self, action: #selector(didPressButton(_:)), forControlEvents: UIControlEvents.TouchUpInside)
                button.layer.cornerRadius = buttonCornerRadius
                button.layer.masksToBounds = true
                self.addSubview(button)
                
                count += 1
            }
        }
        
        didSetupView = true
    }

}
