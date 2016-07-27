//
//  MusicListViewController.swift
//  pk-style-demo
//
//  Created by Paul Kim on 7/26/16.
//  Copyright © 2016 Paul Kim. All rights reserved.
//

import UIKit

class MusicListViewController: UIViewController {

    @IBOutlet weak var musicListTableView: DesignableTableView!

    var myTableView: UITableView = UITableView()
    
    var musicTracks = [MusicTrack]()
    
//    override func prepareForInterfaceBuilder() {
//        super.prepareForInterfaceBuilder()
//        setupViews()
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        setupViews()
    }
    
}


extension MusicListViewController: UITableViewDataSource {
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return musicTracks.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCellWithIdentifier("MusicTrackCell") as? MusicTrackCell else {
            return UITableViewCell()
        }
        let track = musicTracks[indexPath.row]
        cell.setTrack(track)
        return cell
    }
    
    
    
}


extension MusicListViewController: DesignableTableViewProtocol {
    func setupViews() {
        #if !TARGET_INTERFACE_BUILDER
            let bundle = NSBundle.mainBundle()
        #else
            let bundle = NSBundle(forClass: self.dynamicType)
        #endif
        
        let nib = UINib(nibName: "MusicTrackCell", bundle: bundle)
        
        
        myTableView.registerNib(nib, forCellReuseIdentifier: "MusicTrackCell")
        
        myTableView.delegate = self
        myTableView.dataSource = self
        
        myTableView.estimatedRowHeight = 65
        myTableView.rowHeight = UITableViewAutomaticDimension
        
        let trackOne = MusicTrack(artist: "Drake", title: "One Dance", time: 173, image: nil)
        let trackTwo = MusicTrack(artist: "Major Lazer", title: "Cold Water", time: 185, image: nil)
        let trackThree = MusicTrack(artist: "Rihanna", title: "Needed Me", time: 191, image: nil)
        musicTracks = [trackOne, trackTwo, trackThree]
        
        myTableView.reloadData()
    }
}

extension MusicListViewController: UITableViewDelegate {
    func tableView(tableView: UITableView, estimatedHeightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
}