//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by JibJab on 10/10/22.
//

import Foundation

public enum LoadFeedResult {
    case success([FeedItem])
    case failure(Error)
}

public protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
