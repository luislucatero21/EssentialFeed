//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by JibJab on 10/10/22.
//

import Foundation

public typealias LoadFeedResult = Result<[FeedImage], Error>

public protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
