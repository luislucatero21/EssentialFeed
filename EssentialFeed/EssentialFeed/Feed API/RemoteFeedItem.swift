//
//  RemoteFeedItem.swift
//  EssentialFeed
//
//  Created by JibJab on 13/11/22.
//

import Foundation

struct RemoteFeedItem: Decodable {
    let id: UUID
    let description: String?
    let location: String?
    let image: URL
}
