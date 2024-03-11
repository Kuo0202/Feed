//
//  FeedItem.swift
//  Feed
//
//  Created by Peter Kuo on 2024/1/22.
//

import Foundation

public struct FeedItem: Equatable {
    let id: UUID
    let description: String?
    let location: String?
    let imageURL: URL
}
