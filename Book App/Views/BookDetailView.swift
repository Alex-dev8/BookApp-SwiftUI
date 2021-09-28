//
//  BookDetailView.swift
//  Book App
//
//  Created by Alex Cannizzo on 28/09/2021.
//

import SwiftUI

struct BookDetailView: View {
    var book: Book
    @State private var rating = 3
    
    var body: some View {
        VStack {
            Text("Read Now!")
            Image("cover\(book.id)")
                .resizable()
                .scaledToFit()
                .padding()
                .padding(.horizontal, 60)
            Text("Mark for later!")
            Image(systemName: "star.fill")
                .foregroundColor(.yellow)
                .padding()
            Text("Rate Amazing Words")
            Picker("Rate app", selection: $rating) {
                Text("1").tag(1)
                Text("2").tag(2)
                Text("3").tag(3)
                Text("4").tag(4)
                Text("5").tag(5)
            }
            .pickerStyle(.segmented)
            .padding(.horizontal, 40)
        }
       
    }
}

struct BookDetailView_Previews: PreviewProvider {
    static var previews: some View {
        BookDetailView(book: Book())
            .environmentObject(BookModel())
    }
}
