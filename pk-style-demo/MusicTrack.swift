//
//  MusicTrack.swift
//  pk-style-demo
//
//  Created by Paul Kim on 7/26/16.
//  Copyright © 2016 Paul Kim. All rights reserved.
//

import UIKit

class MusicTrack {
    
    var artist: String?
    var title: String?
    var time: Int?
    var image: UIImage?
    
    init(artist: String?, title: String?, time: Int?, image: UIImage?) {
        self.artist = artist
        self.title = title
        self.time = time
        self.image = image
    }
    
}