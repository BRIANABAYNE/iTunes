//
//  AlbumDetailViewController.swift
//  iTunes
//
//  Created by Briana Bayne on 8/22/23.
//

import UIKit

class AlbumDetailViewController: UIViewController {
    
    // MARK: - Outlets
    
    @IBOutlet weak var artistSongImage: UIImageView!
    @IBOutlet weak var artistDetailNameLabel: UILabel!
    @IBOutlet weak var artistAlbumDetailLabel: UILabel!
    @IBOutlet weak var artistTrackDetailsLabel: UILabel!
    @IBOutlet weak var artistDetailSongLabel: UILabel!
    
    // MARK: - Properties
    
    var tld: Song?
    
    
    // MARK: - LifeCycles

    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    func updateView() { // where do I call this?
        guard let song = tld else { return }
        DispatchQueue.main.sync {
            self.artistSongImage.image = song.songArt
            self.artistDetailNameLabel.text = song.artistDetailNameLabel
            self.artistAlbumDetailLabel.text = song.artistAlbumDetailLabel
            self.artistTrackDetailsLabel.text = song.artistTrackDetailsLabel
            self.artistDetailSongLabel.text = song.artistDetailSongLabel
        }
    }

   

}
