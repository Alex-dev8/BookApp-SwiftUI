//
//  BookListView.swift
//  Book App
//
//  Created by Alex Cannizzo on 28/09/2021.
//

import SwiftUI

struct BookListView: View {
    
    @EnvironmentObject var model: BookModel
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVStack {
                    ForEach(model.books) { book in
                        NavigationLink (destination: BookDetailView(book: book)) {
                            BookCard(book: book)
                        }
                        NavigationLink(destination: EmptyView()) {
                            EmptyView()
                        }
                    }
                }
                
            }//END: Scroll View
            .navigationTitle("My Library")
        }//END: NavigationView
        
    }
        
}

struct BookListView_Previews: PreviewProvider {
    static var previews: some View {
        BookListView()
            .environmentObject(BookModel())
    }
}
