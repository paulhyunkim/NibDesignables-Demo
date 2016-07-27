//
//  MusicListViewController.swift
//  pk-style-demo
//
//  Created by Paul Kim on 7/26/16.
//  Copyright © 2016 Paul Kim. All rights reserved.
//

import UIKit

class MusicListViewController: DesignableViewController {

    @IBOutlet weak var musicListTableView: DesignableTableView!
    
    var musicTracks = [MusicTrack]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewController()
    }
    
    func setupViewController() {
        musicListTableView.registerNibWithName("MusicTrackCell")
        
        musicListTableView.delegate = self
        musicListTableView.dataSource = self
        musicListTableView.estimatedRowHeight = 65
        musicListTableView.rowHeight = UITableViewAutomaticDimension
        
        let trackOne = MusicTrack(artist: "Drake", title: "One Dance", time: 173, image: nil)
        let trackTwo = MusicTrack(artist: "Major Lazer", title: "Cold Water", time: 185, image: nil)
        let trackThree = MusicTrack(artist: "Rihanna", title: "Needed Me", time: 191, image: nil)
        musicTracks = [trackOne, trackTwo]
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


extension MusicListViewController: UITableViewDelegate {
    
    func tableView(tableView: UITableView, estimatedHeightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    
}


extension MusicListViewController: DesignableTableViewProtocol {
    
    func prepareDesignableTableViewForInterfaceBuilder(designableTableView: DesignableTableView) {
        musicListTableView = designableTableView
        setupViewController()

        musicListTableView.reloadData()
    }
    
}

