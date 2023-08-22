//
//  AlbumDetail.swift
//  iTunes
//
//  Created by Briana Bayne on 8/21/23.
//

import Foundation

struct SongTopLevelDict: Decodable {
    private enum CodingKeys: String, CodingKey {
    case songCount = "resultCount"
    case details =  "results"
        
    }

let songCount: Int
let details: [Song]
}

struct Song: Decodable {
    private enum CodingKeys: String, CodingKey {
        case albumName = "collectionType"
        case collectionID = "collectionId"
        case artistFullName = "artistName"
        case songName = "collectionName"
        case songArt = "artworkUrl100"
    }
    
    let albumName: String
    let collectionID: Int
    let artistFullName: String
    let songName: String
    let songArt: String
    
}
