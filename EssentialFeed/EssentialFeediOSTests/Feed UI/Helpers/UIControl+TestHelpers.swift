//
//  UIControl+TestHelpers.swift
//  EssentialFeed
//
//  Created by Luis Angel Lucatero Villanueva on 21/09/24.
//

import UIKit

extension UIControl {
    func simulate(event: UIControl.Event) {
        allTargets.forEach { target in
            actions(forTarget: target, forControlEvent: event)?.forEach {
                (target as NSObject).perform(Selector($0))
            }
        }
    }
}
