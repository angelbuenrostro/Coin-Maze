//
//  APIController.swift
//  Coin Maze
//
//  Created by Angel Buenrostro on 9/21/19.
//  Copyright © 2019 Angel Buenrostro. All rights reserved.
//

import Foundation


enum HTTPMethod: String {
    case get = "GET"
    case post = "POST"
}

enum NetworkError: Error {
    case noAuth
    case badAuth
    case otherError
    case badData
    case noDecode
}

class APIController {
    
    let constants = Constants() // Holds API Key and pre-built URLs
    
    // TODO: Init Network Call Method
    func initialize(completion: @escaping (Result<Room, NetworkError>) -> Void ) {
        // Make Request
        var request = URLRequest(url: constants.initURL)
        request.httpMethod = HTTPMethod.get.rawValue
        request.addValue("Token \(constants.apiKey)", forHTTPHeaderField: "Authorization")
        // Decode JSON while handling errors
    }
}
