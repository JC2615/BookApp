//
//  Book.swift
//  BookAppChallenge
//
//  Created by Joshua Curry on 8/25/21.
//

import Foundation

struct Book: Identifiable, Decodable {
    var title: String
    var author: String
    var isFavourite: Bool
    var currentPage: Int
    var rating: Int
    var id: Int
    var content: [String]
}
