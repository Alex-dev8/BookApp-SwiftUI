//
//  BookTextView.swift
//  Book App
//
//  Created by Alex Cannizzo on 28/09/2021.
//

import SwiftUI

struct BookTextView: View {
    @EnvironmentObject var model: BookModel
    var book: Book
    @State private var page = 0
    
    var body: some View {
        TabView(selection: $page) {
            ForEach(book.content.indices) { index in
                VStack {
                    ScrollView {
                        Text(book.content[index])
                            .padding()
                            .tag(index)
                        
                    }
                    Text("\(page + 1)")
                }
            }
        }
        .tabViewStyle(.page(indexDisplayMode: .never))
        .onChange(of: page) { newValue in
            model.saveCurrentPage(forID: book.id, page: page)
                
        }
        .onAppear {
            page = book.currentPage
            
        }
        .navigationTitle("")
        .navigationBarTitleDisplayMode(.inline)
    }
    
}

struct BookTextView_Previews: PreviewProvider {
    static var previews: some View {
        BookTextView(book: Book())
            .environmentObject(BookModel())
    }
}
