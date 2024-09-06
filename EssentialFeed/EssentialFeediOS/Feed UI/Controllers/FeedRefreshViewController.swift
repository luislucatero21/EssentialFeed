//
//  FeedRefreshViewController.swift
//  EssentialFeediOS
//
//  Created by Luis Angel Lucatero Villanueva on 02/09/24.
//

import UIKit

final class FeedRefreshViewController: NSObject {
    private(set) lazy var view: UIRefreshControl = binded(UIRefreshControl())

    private let viewModel: FeedViewModel

    init(viewModel: FeedViewModel) {
        self.viewModel = viewModel
    }

    @objc func refresh() {
        viewModel.loadFeed()
    }

    private func binded(_ view: UIRefreshControl) -> UIRefreshControl {
        viewModel.onLoadingStateChange = { [weak self] isLoading in
            if isLoading {
                self?.view.beginRefreshing()
            } else {
                self?.view.endRefreshing()
            }
        }
        view.addTarget(self, action: #selector(refresh), for: .valueChanged)
        return view
    }
}

// Required to make pass the tests related to refresh control
#if DEBUG
extension FeedRefreshViewController {
    func replaceView(_ view: UIRefreshControl) {
        self.view = view
    }
}
#endif
