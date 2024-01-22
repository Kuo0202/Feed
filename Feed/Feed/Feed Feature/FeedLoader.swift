//
//  FeedLoader.swift
//  Feed
//
//  Created by Peter Kuo on 2024/1/22.
//

import Foundation

enum LoadFeedResult {
    case success([FeedItem])
    case error(Error)
}

protocol FeedLoader {
    func load(completion: (LoadFeedResult) -> Void)
}
