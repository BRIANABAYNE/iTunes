//
//  AlbumService.swift
//  iTunes
//
//  Created by Briana Bayne on 8/22/23.
//

import Foundation

//https://itunes.apple.com/search?entity=album&limit=25&term=SZA
// Params
// key : entity - value album
// key limit - value 25
// term - sza

// headers
// Host - <calculated when request is sent>

// "User-Agent" - PostmanRuntime/7.32.2

// Accept - */*

// "Accept-Encoding" - gzip, deflate, br

// Connection - keep-alive
// GET -

  struct AlbumService {
    
    func fetchAlbum(with searchTerm: String, callback: @escaping(Result<AlbumDictionary,NetworkingError>) -> Void) {
        
        // baseURL
        guard let baseURL = URL(string:"https://itunes.apple.com/search?") else {return} // Do I need the ?
        var request = URLRequest(url: baseURL)
        var requestTwo = URLRequest(url: baseURL)
        var requestThree = URLRequest(url: baseURL)
        var requestFour = URLRequest(url: baseURL)
        var requestFive = URLRequest(url: baseURL)
        var requestSix = URLRequest(url: baseURL)
        
        // Headers are value then key
        request.setValue("<calculated when request is sent>", forHTTPHeaderField: "Host")
        requestTwo.setValue("PostmanRuntime/7.32.2", forHTTPHeaderField: "User-Agent")
        requestThree.setValue("*/*", forHTTPHeaderField: "Accept")
        requestFour.setValue("gzip, deflate, br", forHTTPHeaderField:"Accept-Encoding")
        requestFive.setValue("keep-alive", forHTTPHeaderField: "Connection")
        requestSix.httpMethod = "GET"
        // Key + Value querry item/ there are three, so we create three.
        let apiQuerryItem = URLQueryItem(name:"entity", value: "album")
        let apiQuerryItemTwo = URLQueryItem(name:"limit", value: "") // dont want to hard code a value, come back to this
        let apiQuerryItemThree = URLQueryItem(name: "term", value: "") // dont want to haed code a artist. Come back to this.
        request.url?.append(queryItems: [apiQuerryItem,apiQuerryItemTwo,apiQuerryItemThree])
        print(request.url)// checking to see if the URL prints as we want in the debugger.
        
        URLSession.shared.dataTask(with: request) { data,_, error in
            if let error {
                print("Oh no! Something went wrong.", error.localizedDescription)
                callback(.failure(.thrownError(error))); return
            }
            guard let iTunesAlbumData = data else {
                print("There was an error checking for Data")
                callback(.failure(.noData))
                return
            }
            do {
                let album = try JSONDecoder().decode(AlbumDictionary.self, from: iTunesAlbumData)
                callback(.success(album)); return
                
            } catch {
                callback(.failure(.unableToDecode)); return
            }
            
        }.resume()
        
    } // end of fetch
    
  // https://is1-ssl.mzstatic.com/image/thumb/Music116/v4/24/4d/8d/244d8dc4-ccbf-7297-73ca-c9609004674d/886449183500.jpg/100x100bb.jpg
      

} // end of Struct
