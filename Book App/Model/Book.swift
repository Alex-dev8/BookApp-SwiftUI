//
//  Book.swift
//  Book App
//
//  Created by Alex Cannizzo on 27/09/2021.
//

import Foundation

class Book: Identifiable, Decodable {
    var title = "Title"
    var author = "Author"
    var isFavourite = true
    var currentPage = 0
    var rating = 3
    var id = 1
    var content = ["I am a test book."]
}
