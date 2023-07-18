//
//  SharedTestHelpers.swift
//  EssentialFeedTests
//
//  Created by Luis Angel Lucatero Villanueva on 30/11/22.
//

import Foundation

func anyNSError() -> NSError {
    return NSError(domain: "any error", code: 0)
}

func anyURL() -> URL {
    return URL(string: "http://any-url.com")!
}
