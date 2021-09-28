//
//  BookTextView.swift
//  Book App
//
//  Created by Alex Cannizzo on 28/09/2021.
//

import SwiftUI

struct BookTextView: View {
    var book: Book
    
    var body: some View {
        TabView {
            ForEach(book.content, id: \.self) { cont in
                ScrollView {
                    Text(cont)
                        .padding()
                }
                
            }
        }
        .tabViewStyle(PageTabViewStyle())
        
    }
}

struct BookTextView_Previews: PreviewProvider {
    static var previews: some View {
        BookTextView(book: Book())
            .environmentObject(BookModel())
    }
}
