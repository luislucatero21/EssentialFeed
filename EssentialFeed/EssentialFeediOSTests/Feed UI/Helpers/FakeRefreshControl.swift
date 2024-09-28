//
//  FakeRefreshControl.swift
//  EssentialFeed
//
//  Created by Luis Angel Lucatero Villanueva on 21/09/24.
//

import UIKit

class FakeRefreshControl: UIRefreshControl {
    private var _isRefreshing = false

    override var isRefreshing: Bool { _isRefreshing }

    override func beginRefreshing() {
        _isRefreshing = true
    }

    override func endRefreshing() {
        _isRefreshing = false
    }
}
