//
//  Media.swift
//  NewsReader
//
//  Created by Fiqry Choerudin on 28/04/23.
//

import Foundation

struct Media : Decodable {
    let type : String
    let caption : String
    let metadata : [MediaMetadata]
    
    enum CodingKeys : String , CodingKey {
        case type
        case caption
        case metadata = "media-metadata"
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.type = try container.decode(String.self, forKey: .type)
        self.caption = try container.decode(String.self, forKey: .caption)
        self.metadata = try container.decode([MediaMetadata].self, forKey: .metadata)
    }
    
}
