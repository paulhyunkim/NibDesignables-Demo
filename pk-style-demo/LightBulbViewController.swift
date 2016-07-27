//
//  LightBulbViewController.swift
//  pk-style-demo
//
//  Created by Paul Kim on 7/22/16.
//  Copyright © 2016 Paul Kim. All rights reserved.
//

import UIKit

class LightBulbViewController: UIViewController {

    @IBOutlet weak var lightBulbView: LightBulbView!
    @IBOutlet weak var numberPadView: NumberPadView!
    
    override func viewDidLoad() {
        numberPadView.delegate = self
    }

}

extension LightBulbViewController: NumberPadDelegate {
    
    func numberPadDidPressButton(button: UIButton) {
        guard let buttonTitle = button.titleForState(UIControlState.Normal),
            let buttonNumber = Int(buttonTitle) else { return }
        lightBulbView.blink(buttonNumber)
    }
    
}

