//
//  RemoteFeedLoader.swift
//  Feed
//
//  Created by Peter Kuo on 2024/1/23.
//

import Foundation

public final class RemoteFeedLoader {
    private let url: URL
    private let client: HTTPClient

    public enum Error: Swift.Error {
        case conectivity
        case invalidData
    }

    public enum Result: Equatable {
        case success([FeedItem])
        case failure(Error)
    }

    public init(url: URL, client: HTTPClient) {
        self.url = url
        self.client = client
    }

    public func load(completion: @escaping (Result) -> Void) {
        client.get(from: url) { result in
            switch result {
            case let .success(data, response):
//                if let items = try? FeedItemMapper.map(data, response) {
//                    completion(.success(items))
//                } else {
//                    completion(.failure(.invalidData))
//                }

                do {
                    let items = try FeedItemMapper.map(data, response)
                    completion(.success(items))
                }
                catch {
                    completion(.failure(.invalidData))
                }

            case .failure:
                completion(.failure(.conectivity))
            }
        }
    }
}
