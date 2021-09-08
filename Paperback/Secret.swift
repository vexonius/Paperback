//
//  Secret.swift
//  Secret
//
//  Created by Tino Emer on 07.09.2021..
//

import Foundation

protocol Secret {
    var apiKey: String { get }
    var JWTSecret: String { get }
    var apiSecretKey: String { get }
    var baseUrl: String { get }
}
