//
//  DesignableTableView.swift
//  pk-style-demo
//
//  Created by Paul Kim on 7/26/16.
//  Copyright © 2016 Paul Kim. All rights reserved.
//

import UIKit

protocol DesignableTableViewProtocol: class {
    func prepareDesignableTableViewForInterfaceBuilder(designableTableView: DesignableTableView)
}

@IBDesignable class DesignableTableView: UITableView {
    
    @IBInspectable var delegateClass: String = "View Controller"
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        
        guard let designableDataSource = UIStoryboard(name: "Main", bundle: NSBundle(forClass: self.dynamicType)).instantiateViewControllerWithIdentifier(delegateClass) as? DesignableTableViewProtocol else {
            return
        }
        
        designableDataSource.prepareDesignableTableViewForInterfaceBuilder(self)
    }
    
    func registerNibWithName(nibName: String) {
        #if !TARGET_INTERFACE_BUILDER
            let bundle = NSBundle.mainBundle()
        #else
            let bundle = NSBundle(forClass: self.dynamicType)
        #endif
        
        let nib = UINib(nibName: nibName, bundle: bundle)
        self.registerNib(nib, forCellReuseIdentifier: nibName)
    }
    
}
