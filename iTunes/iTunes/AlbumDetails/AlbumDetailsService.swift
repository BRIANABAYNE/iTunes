//
//  AlbumDetailsService.swift
//  iTunes
//
//  Created by Briana Bayne on 8/22/23.
//

import Foundation
// https://itunes.apple.com/lookup?entity=song&id=1239976329
// params
// key - entity value - song
// id - 1239976329

struct AlbumDetailsService {
    
    func fetchAlbumDetails(with searchTerm: String, callback: @escaping(Result<SongTopLevelDict,NetworkingError>) -> Void) {
        
        // baseURL
        guard let baseURL = URL(string: "https://itunes.apple.com/lookup?") else {return}// do I need the ?
        var request = URLRequest(url: baseURL)
        var requestTwo = URLRequest(url: baseURL)
        var requestThree = URLRequest(url: baseURL)
        var requestFour = URLRequest(url: baseURL)
        var requestFive = URLRequest(url: baseURL)
        var requestSix = URLRequest(url: baseURL)
        request.setValue("<calculated when request is sent>", forHTTPHeaderField: "Host")
        requestTwo.setValue("PostmanRuntime/7.32.2", forHTTPHeaderField: "User-Agent")
        requestThree.setValue("*/*", forHTTPHeaderField: "Accept")
        requestFour.setValue("gzip, deflate, br", forHTTPHeaderField:"Accept-Encoding")
        requestFive.setValue("keep-alive", forHTTPHeaderField: "Connection")
        requestSix.httpMethod = "GET"
        
                let apiQuerryItem = URLQueryItem(name: "entity", value: "song")
                let apiQuerryItemTwo = URLQueryItem(name: "id", value:"") // dont want to hard code the number that is the collectionType
        request.url?.append(queryItems: [apiQuerryItem,apiQuerryItemTwo])
        print(request.url) // printing to see if the URL is correct in the debugger
        
        URLSession.shared.dataTask(with: request) { data,_,error in
            if let error {
                print("Oh no! Something went wrong", error.localizedDescription)
                callback(.failure(.thrownError(error))); return
            }
            guard let albumDetailsData = data else {
                print("There was an error checking for Data")
                callback(.failure(.noData))
                return
            }
            do {
                let iTunesAlbumDetails = try JSONDecoder().decode(SongTopLevelDict.self, from: albumDetailsData)
                callback(.success(iTunesAlbumDetails)); return
            } catch {
                callback(.failure(.unableToDecode)); return
            }
        }.resume()
        
    } // end of fetch
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
} // end of struct


