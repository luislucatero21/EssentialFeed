//
//  FeedUIIntegrationTests+Localization.swift
//  EssentialFeed
//
//  Created by Luis Angel Lucatero Villanueva on 27/09/24.
//

import Foundation
import XCTest
import EssentialFeediOS

extension FeedUIIntegrationTests {
    func localized(_ key: String, file: StaticString = #file, line: UInt = #line) -> String {
        let table = "Feed"
        let bundle = Bundle(for: FeedViewController.self)
        let value = bundle.localizedString(forKey: key, value: nil, table: table)
        if value == key {
            XCTFail("Missing localized string for key: \(table)", file: file, line: line)
        }
        return value
    }
}
