//
//  MusicCollectionTableDataSource.swift
//  pk-style-demo
//
//  Created by Paul Kim on 7/26/16.
//  Copyright © 2016 Paul Kim. All rights reserved.
//

import Foundation
import UIKit

class MusicCollectionTableDataSource: NSObject, UITableViewDataSource {
    
    var musicTracks: [MusicTrack] = []
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return musicTracks.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCellWithIdentifier("MusicTrackCell") as? MusicTrackCell else {
            return UITableViewCell()
        }
        cell.setTrack(musicTracks[indexPath.row])
        return cell
    }
    
}
