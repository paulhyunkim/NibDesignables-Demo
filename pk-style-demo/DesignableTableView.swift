//
//  DesignableTableView.swift
//  pk-style-demo
//
//  Created by Paul Kim on 7/26/16.
//  Copyright © 2016 Paul Kim. All rights reserved.
//

import UIKit

protocol DesignableTableViewProtocol: class {
    var myTableView: UITableView { get set }
    func setupViews()
//    func designableTableView() -> UITableView
}


@IBDesignable class DesignableTableView: UITableView {
    
    @IBInspectable var delegateClass: String = "View Controller"
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        
        guard let designableDataSource = UIStoryboard(name: "Main", bundle: NSBundle(forClass: self.dynamicType)).instantiateViewControllerWithIdentifier(delegateClass) as? DesignableTableViewProtocol else {
            return
        }
        designableDataSource.myTableView = self
        designableDataSource.setupViews()

    }
    
}
