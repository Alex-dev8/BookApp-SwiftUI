//
//  BookModel.swift
//  Book App
//
//  Created by Alex Cannizzo on 27/09/2021.
//

import Foundation

class BookModel: ObservableObject {
    @Published var books = [Book]()
    
    init() {
        self.books = DataService.getLocalData()
    }
    
    func updateRating(forID: Int, rating: Int) {
        if let index = books.firstIndex(where: { $0.id == forID }) {
            books[index].rating = rating
        }
    }
    
}
