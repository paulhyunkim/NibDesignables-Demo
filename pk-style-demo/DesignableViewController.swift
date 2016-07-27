//
//  DesignableViewController.swift
//  pk-style-demo
//
//  Created by Paul Kim on 7/26/16.
//  Copyright © 2016 Paul Kim. All rights reserved.
//

import UIKit

class DesignableViewController: UIViewController {

//    func setupViewController() {
//        #if !TARGET_INTERFACE_BUILDER
//            let bundle = NSBundle.mainBundle()
//        #else
//            let bundle = NSBundle(forClass: self.dynamicType)
//        #endif
//        
//        let nib = UINib(nibName: "MusicTrackCell", bundle: bundle)
//        
//        
//        musicListTableView.registerNib(nib, forCellReuseIdentifier: "MusicTrackCell")
//        
//        musicListTableView.delegate = self
//        musicListTableView.dataSource = self
//        musicListTableView.estimatedRowHeight = 65
//        musicListTableView.rowHeight = UITableViewAutomaticDimension
//        
//        let trackOne = MusicTrack(artist: "Drake", title: "One Dance", time: 173, image: nil)
//        let trackTwo = MusicTrack(artist: "Major Lazer", title: "Cold Water", time: 185, image: nil)
//        let trackThree = MusicTrack(artist: "Rihanna", title: "Needed Me", time: 191, image: nil)
//        musicTracks = [trackOne, trackTwo, trackThree]
//        
//        musicListTableView.reloadData()
//    }

}

//extension UIViewController {
//
//    func registerNibsForTableView(tableView: UITableView, nibNames: [String]) {
//        #if !TARGET_INTERFACE_BUILDER
//            let bundle = NSBundle.mainBundle()
//        #else
//            let bundle = NSBundle(forClass: self.dynamicType)
//        #endif
//        
//        for nibName in nibNames {
//            let nib = UINib(nibName: nibName, bundle: bundle)
//            tableView.registerNib(nib, forCellReuseIdentifier: nibName)
//        }
//    }
//    
//    func registerNibForTableView(tableView: UITableView, nibName: String) {
//        #if !TARGET_INTERFACE_BUILDER
//            let bundle = NSBundle.mainBundle()
//        #else
//            let bundle = NSBundle(forClass: self.dynamicType)
//        #endif
//
//        let nib = UINib(nibName: nibName, bundle: bundle)
//        tableView.registerNib(nib, forCellReuseIdentifier: nibName)
//    }
//    
//}


//extension UITableView {
//    
//    func registerDesignableNibWithName(nibName: String) {
//        #if !TARGET_INTERFACE_BUILDER
//            let bundle = NSBundle.mainBundle()
//        #else
//            let bundle = NSBundle(forClass: self.dynamicType)
//        #endif
//        
//        let nib = UINib(nibName: nibName, bundle: bundle)
//        self.registerNib(nib, forCellReuseIdentifier: nibName)
//    }
//    
//}