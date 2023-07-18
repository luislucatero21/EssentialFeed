//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by JibJab on 10/10/22.
//

import Foundation

public protocol FeedLoader {
    typealias Result = Swift.Result<[FeedImage], Error>

    func load(completion: @escaping (Result) -> Void)
}
