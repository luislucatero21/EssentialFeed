//
//  FeedViewController.swift
//  Prototype
//
//  Created by Luis Angel Lucatero Villanueva on 10/04/24.
//

import UIKit

struct FeedImageViewModel {
    let description: String?
    let location: String?
    let imageName: String
}

final class FeedViewController: UITableViewController {

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return tableView.dequeueReusableCell(withIdentifier: "FeedImageCell")!
    }

}
