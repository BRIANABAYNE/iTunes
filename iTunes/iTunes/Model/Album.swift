//
//  SZA.swift
//  iTunes
//
//  Created by Briana Bayne on 8/21/23.
//

import Foundation

struct AlbumDictionary: Decodable {
    private enum CodingKeys: String, CodingKey {
        case count = "resultCount"
        case items = "results"
    }
    let count: Int
    let items: [Album]
}

struct Album: Decodable {
    
    private enum CodingKeys: String, CodingKey {
        //case wrapperType
        case album = "collectionType"
        case artistID = "artistId"
        case collectionID = "collectionId"
        case artistName
        case songName = "collectionName"
        case albumArt = "artworkUrl100"
        case tractCount
    }
    
   // let wrapperType: String
    let album: String
    let artistID: Int
    let collectionID: Int
    let artistName: String
    let songName: String
    let albumArt: String
    let tractCount: Int
}
