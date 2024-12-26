//
//  DataService.swift
//  ytapiapp
//
//  Created by Ayush Solanki on 23/12/24.
//

import Foundation

struct DataService {
    
    private let apiKey = Bundle.main.infoDictionary?["API_KEY"] as? String
    func getVideo() async -> [Video] {
        
        // check if api key is there
        guard apiKey != nil else{
            return [Video]()
            
        }
        
        // create the url
        let urlString = "https://www.googleapis.com/youtube/v3/playlistItems?part=snippet&playlistId=PLMRqhzcHGw1b7HFep9bJFc-a2a_1IustP&key=\(apiKey!)"
        let url = URL(string: urlString)
        
        if let url = url {
            
            // create the request
            let request = URLRequest(url: url)
            let session = URLSession.shared
            
            // send the request
            do {
                let (data, response) = try await session.data(for: request)
               
                // parse the data
            }
            catch {
                print(error)
            }
            
            
          
            
        }
        
        
        
        
        return [Video]()
    }
    
}
