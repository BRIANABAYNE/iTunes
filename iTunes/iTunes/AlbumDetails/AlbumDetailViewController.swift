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
    // MARK: - LifeCycles

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
