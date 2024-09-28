//
//  UIRefreshControl+TestHelpers.swift
//  EssentialFeed
//
//  Created by Luis Angel Lucatero Villanueva on 21/09/24.
//

import UIKit

extension UIRefreshControl {
    func simulatePullToRefresh() {
        simulate(event: .valueChanged)
    }
}
