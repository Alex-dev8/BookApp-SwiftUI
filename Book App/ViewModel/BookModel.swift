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
}
