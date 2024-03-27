//
//  FeedLoader.swift
//  Feed
//
//  Created by Peter Kuo on 2024/1/22.
//

import Foundation

public enum LoadFeedResult {
    case success([FeedItem])
    case failure(Error)
}

protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
