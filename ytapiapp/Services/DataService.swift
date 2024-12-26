//
//  DataService.swift
//  ytapiapp
//
//  Created by Ayush Solanki on 23/12/24.
//

import Foundation

struct DataService {
    private let apiKey = Bundle.main.infoDictionary?["API_KEY"] as? String
    func getVideo() async->[Video] {
        // check if api key is there
        guard apiKey != nil else{
            return [Video]()
            
        }
        
        // create the url
        
        // create the request
        
        // send the request
        
        // parse
        
        
        return [Video]()
    }
    
}
