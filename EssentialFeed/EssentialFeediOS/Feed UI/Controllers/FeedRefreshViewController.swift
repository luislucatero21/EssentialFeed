//
//  FeedRefreshViewController.swift
//  EssentialFeediOS
//
//  Created by Luis Angel Lucatero Villanueva on 02/09/24.
//

import UIKit

final class FeedRefreshViewController: NSObject, FeedLoadingView {
    private(set) lazy var view: UIRefreshControl = loadView()

    private let presenter: FeedPresenter

    init(presenter: FeedPresenter) {
        self.presenter = presenter
    }

    @objc func refresh() {
        presenter.loadFeed()
    }

    func display(_ viewModel: FeedLoadingViewModel) {
        if viewModel.isLoading {
            self.view.beginRefreshing()
        } else {
            self.view.endRefreshing()
        }
    }

    private func loadView() -> UIRefreshControl {
        let view = UIRefreshControl()
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
