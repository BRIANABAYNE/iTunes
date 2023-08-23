//
//  AlbumTableViewCell.swift
//  iTunes
//
//  Created by Briana Bayne on 8/22/23.
//

import UIKit

class AlbumTableViewCell: UITableViewCell {
    
    
    // MARK: - Outlets
    
    @IBOutlet weak var albumArtImageView: UIImageView!
    @IBOutlet weak var artistNameLabel: UILabel!
    @IBOutlet weak var albumNameLabel: UILabel!
    @IBOutlet weak var tractCountLabel: UILabel!
    @IBOutlet weak var artistSongLabel: UILabel!
    
    
    
    // MARK: - Properties
    

// MARK: - LifeCycles
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func configureCell(with album: Album) {
        DispatchQueue.main.async {
            self.albumArtImageView
            self.artistNameLabel.text = album.artistName
            self.albumNameLabel.text = album.album
            self.tractCountLabel.text = "/album.tractCount" // feel like this is wrong
            self.artistSongLabel.text = album.songName
        }
    }
    


} // end of TableViewCell
