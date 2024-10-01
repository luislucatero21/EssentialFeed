//
//  UITableViewCell+Dequeueing.swift
//  EssentialFeed
//
//  Created by Luis Angel Lucatero Villanueva on 23/09/24.
//

import UIKit

extension UITableView {
    func dequeueReusableCell<T: UITableViewCell>() -> T {
        let identifier = String(describing: T.self)
        return dequeueReusableCell(withIdentifier: identifier) as! T
    }
}
