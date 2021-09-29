//
//  ApiService.swift
//  ApiService
//
//  Created by Tino Emer on 08.09.2021..
//

import Foundation

final class APIService {
    public enum Endpoints: String, Equatable {
        case users
        case user
        case books
        case book
        case shelves
        case shelf
        case collections
        case achievments
        case achievment
        case perks
        case perk
        case experience
    }

    public enum action: String, Equatable {
        case GET
        case POST
        case PUT
        case DELETE
    }


}


