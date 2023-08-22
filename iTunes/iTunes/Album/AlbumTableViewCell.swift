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
    
    
// MARK: - LifeCycles
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
