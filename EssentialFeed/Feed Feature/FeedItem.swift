//
//  FeedItem.swift
//  EssentialFeed
//
//  Created by JibJab on 10/10/22.
//

import Foundation

public struct FeedItem: Equatable {
    let id: UUID
    let description: String?
    let location: String?
    let imageURL: URL
}
