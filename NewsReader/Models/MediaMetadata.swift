//
//  MediaMetadata.swift
//  NewsReader
//
//  Created by Fiqry Choerudin on 28/04/23.
//

import Foundation

struct MediaMetadata : Decodable {
    
    let url : String
    let format : String
    let height : Double
    let width : Double
    
    enum CodingKeys : String , CodingKey {
        case url
        case format
        case height
        case width
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.url = try container.decode(String.self, forKey: .url)
        self.format = try container.decode(String.self, forKey: .format)
        self.height = try container.decode(Double.self, forKey: .height)
        self.width = try container.decode(Double.self, forKey: .width)
    }
    
}
