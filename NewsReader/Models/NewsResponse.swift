//
//  NewsResponse.swift
//  NewsReader
//
//  Created by Fiqry Choerudin on 28/04/23.
//

import Foundation

struct NewsResponse:Decodable {
    let status : String
    let numResult : Int
    let results : [News]
    
    enum CodingKeys : String , CodingKey {
        case status
        case numResult = "num_results"
        case results
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.status = try container.decode(String.self, forKey: .status)
        self.numResult = try container.decode(Int.self, forKey: .numResult)
        self.results = try container.decode([News].self, forKey: .results)
    }
}

