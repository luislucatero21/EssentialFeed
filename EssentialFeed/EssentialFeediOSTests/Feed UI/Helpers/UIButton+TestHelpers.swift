//
//  UIButton+TestHelpers.swift
//  EssentialFeed
//
//  Created by Luis Angel Lucatero Villanueva on 21/09/24.
//

import UIKit

extension UIButton {
    func simulateTap() {
        simulate(event: .touchUpInside)
    }
}
