//
//  RemoteFeedLoaderTests.swift
//  FeedTests
//
//  Created by Peter Kuo on 2024/1/22.
//

import XCTest

class RemoteFeedLoader {
    func load() {
        HTTPClient.shared.requestURL = URL(string: "Https://url.com")
    }
}

class HTTPClient {
    static let shared = HTTPClient()
    private init() {}

    var requestURL: URL?
}

class RemoteFeedLoaderTests: XCTestCase {
    func test_init_doesNotRequestFromURL() {
        let client = HTTPClient.shared
        _ = RemoteFeedLoader()

        XCTAssertNil(client.requestURL)
    }

    func test_load_requestDataFromURL() {
        let client = HTTPClient.shared
        let sut = RemoteFeedLoader()

        sut.load()

        XCTAssertNotNil(client.requestURL)
    }
}
