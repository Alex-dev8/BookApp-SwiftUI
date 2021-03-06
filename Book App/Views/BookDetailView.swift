//
//  BookDetailView.swift
//  Book App
//
//  Created by Alex Cannizzo on 28/09/2021.
//

import SwiftUI

struct BookDetailView: View {
    @EnvironmentObject var model: BookModel
    
    var book: Book
    @State private var rating = 3
    @State private var isFavourite = false
    
    var body: some View {
        VStack {
            NavigationLink(destination: BookTextView(book: book)) {
                VStack {
                    Text("Read Now!")
                        .foregroundColor(Color.primary)
                    Image("cover\(book.id)")
                        .resizable()
                        .scaledToFit()
                        .padding()
                        .padding(.horizontal, 60)
                }
            }
            Text("Mark for later!")
            
            Button {
                isFavourite.toggle()
                model.isFavourite(forID: book.id, favourite: isFavourite)
            } label: {
                if isFavourite {
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                        .padding()
                } else {
                    Image(systemName: "star")
                        .foregroundColor(.yellow)
                        .padding()
                }
            }
            Text("Rate \(book.title)")
            Picker("Rate app", selection: $rating) {
                ForEach(1..<6) { index in
                    Text("\(index)")
                        .tag(index)
                }
            }
            .pickerStyle(.segmented)
            .padding(.horizontal, 40)
            .onChange(of: rating) { newValue in
                model.updateRating(forID: book.id, rating: rating)
            }
        }
        .navigationTitle(book.title)
        .onAppear {
            rating = book.rating
            isFavourite = book.isFavourite
        }
    }
    
}

struct BookDetailView_Previews: PreviewProvider {
    static var previews: some View {
        BookDetailView(book: Book())
            .environmentObject(BookModel())
    }
}
