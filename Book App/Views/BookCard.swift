//
//  BookCard.swift
//  Book App
//
//  Created by Alex Cannizzo on 28/09/2021.
//

import SwiftUI

struct BookCard: View {
    var book: Book
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.white)
                .cornerRadius(15)
                .shadow(color: Color(.sRGB, red: 0, green: 0, blue: 0, opacity: 0.5), radius: 4, x: -5, y: 5)
            
            VStack(alignment: .leading) {
                Spacer()
                HStack {
                    Text(book.title)
                        .foregroundColor(.black)
                        .bold()
                        .padding([.top, .leading])
                        .font(.largeTitle)
                        .multilineTextAlignment(.leading)
                    Spacer()
                    Image(systemName: "star")
                        
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.yellow)
                        .padding(.trailing)
                }
                Text(book.author)
                    .foregroundColor(.black)
                    .italic()
                    .padding(.leading)
                
                Spacer()
                Image("cover\(book.id)")
                    .resizable()
                    .scaledToFit()
                    .padding()
            }
            
        }
        .padding()
    }
}

struct BookCard_Previews: PreviewProvider {
    static var previews: some View {
        BookCard(book: Book())
    }
}
