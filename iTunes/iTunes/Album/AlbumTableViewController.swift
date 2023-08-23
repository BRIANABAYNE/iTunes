//
//  AlbumTableViewController.swift
//  iTunes
//
//  Created by Briana Bayne on 8/22/23.
//

import UIKit

class AlbumTableViewController: UITableViewController {
    
    // MARK: - Outlets
    
    @IBOutlet weak var albumSearchBar: UISearchBar!
   
    
    
// MARK: - LifeCycles
    override func viewDidLoad() {
        super.viewDidLoad()

    
    }
    
    // MARK: - Propeties
    
    var albumDict: AlbumDictionary
    var iTunesAlbums: [Album]?

    // MARK: - Actions
    
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return albumDict.albums.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "iTunesArtist", for: indexPath) as? AlbumTableViewCell else { return UITableViewCell() }
        guard let iTunesAlbum = albumDict.albums[indexPath.row] else { return UITableViewCell() }
        cell.configureCell(with: iTunesAlbum)
        return cell
    }
  


    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let segue.identifier == "toDetailVC",
              let indexPath = tableView.indexPathForSelectedRow,
              let cell = tableView.cellForRow(at: indexPath) as? AlbumTableViewCell,
              let destination = segue.destination as? AlbumDetailViewController,
              let album = cell // come back to this else { return }
    }
    

}// end of TableView
