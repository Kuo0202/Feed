//
//  HTTPClient.swift
//  Feed
//
//  Created by Peter Kuo on 2024/3/12.
//

import Foundation

public enum HTTPClientResult {
    case success(Data, HTTPURLResponse)
    case failure(Error)
}

public protocol HTTPClient {
    func get(from url: URL, completion: @escaping (HTTPClientResult) -> Void)
}
