//
//  FeedRefreshViewController.swift
//  EssentialFeediOS
//
//  Created by Luis Angel Lucatero Villanueva on 02/09/24.
//

import UIKit

protocol FeedRefreshViewControllerDelegate {
    func didRequestFeedRefresh()
}

final class FeedRefreshViewController: NSObject, FeedLoadingView {
    @IBOutlet private var view: UIRefreshControl?

    var delegate: FeedRefreshViewControllerDelegate?

    @IBAction func refresh() {
        delegate?.didRequestFeedRefresh()
    }

    func display(_ viewModel: FeedLoadingViewModel) {
        if viewModel.isLoading {
            view?.beginRefreshing()
        } else {
            view?.endRefreshing()
        }
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
