//
//  MusicTrackCell.swift
//  pk-style-demo
//
//  Created by Paul Kim on 7/26/16.
//  Copyright © 2016 Paul Kim. All rights reserved.
//

import UIKit

class MusicTrackCell: UITableViewCell {

    @IBOutlet weak var trackTitleLabel: UILabel!
    @IBOutlet weak var trackArtistLabel: UILabel!
    @IBOutlet weak var trackTimeLabel: UILabel!
    @IBOutlet weak var trackImageView: UIImageView!
    
    func setTrack(track: MusicTrack) {
        trackTitleLabel.text = track.title
        trackArtistLabel.text = track.artist
        trackTimeLabel.text = String(track.time)
//        trackImageView.image = track.image
    }
    
}
