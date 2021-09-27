//
//  DetailView.swift
//  Book App
//
//  Created by Alex Cannizzo on 27/09/2021.
//

import SwiftUI

struct DetailView: View {
    var model:Book
    @State private var rating = 5
    
    var body: some View {
        VStack {
            Text("Read now!")
            Image("cover1")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(40)
            Text("Mark for later!")
            Image(systemName: "star.fill")
                .foregroundColor(.yellow)
                .padding(5)
            Text("Rate app!")
            Picker("Rate", selection: $rating) {
                Text("1").tag(1)
                Text("2").tag(2)
                Text("3").tag(3)
                Text("4").tag(4)
                Text("5").tag(5)
            }
            .padding()
            .padding(.horizontal, 30)
            .pickerStyle(.segmented)
        }
        .navigationBarTitle("Book 1")
    }
        
}

struct DetailView_Previews: PreviewProvider {
    static var model = BookModel()
    static var previews: some View {
        DetailView(model: model.books[0])
        
    }
}
