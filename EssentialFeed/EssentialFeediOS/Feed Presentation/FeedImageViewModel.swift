//
//  FeedImageViewModel.swift
//  EssentialFeediOS
//
//  Created by Luis Angel Lucatero Villanueva on 05/09/24.
//

struct FeedImageViewModel<Image> {
    let description: String?
    let location: String?
    let image: Image?
    let isLoading: Bool
    let shouldRetry: Bool

    var hasLocation: Bool {
        return location != nil
    }
}
