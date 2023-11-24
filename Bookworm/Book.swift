//
//  Book.swift
//  Bookworm
//
//  Created by Noalino on 24/11/2023.
//

import Foundation
import SwiftData

@Model
class Book {
    var title: String
    var author: String
    var genre: String
    var review: String
    var rating: Int
    var date = Date.now

    var isValid: Bool {
        if title.isEmpty || author.isEmpty || genre.isEmpty || review.isEmpty || rating == 0 {
            return false
        }
        return true
    }

    init(title: String, author: String, genre: String, review: String, rating: Int) {
        self.title = title
        self.author = author
        self.genre = genre
        self.review = review
        self.rating = rating
    }
}
