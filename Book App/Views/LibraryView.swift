//
//  ContentView.swift
//  Book App
//
//  Created by Alex Cannizzo on 27/09/2021.
//

import SwiftUI

struct LibraryView: View {
    
    @EnvironmentObject var model: BookModel
    
    var body: some View {
        
        NavigationView {
            
            GeometryReader { geo in
                ScrollView {
                    LazyVStack(spacing: 1) {
                        ForEach(0..<model.books.count, id:\.self) { index in
                            Button(action: {
                                
                            }, label: {
                                ZStack {
                                    Rectangle()
                                        .foregroundColor(.white)
                                    
                                    VStack(alignment: .leading) {
                                        Text(model.books[index].title)
                                            .padding(.leading, 8)
                                            .padding(.top, 8)
                                            .font(.largeTitle)
                                            .foregroundColor(.primary)
                                            .multilineTextAlignment(.leading)
                                        Text(model.books[index].author)
                                            .padding(.leading, 8)
                                            .font(.subheadline)
                                            .foregroundColor(.primary)
                                            .multilineTextAlignment(.leading)
                                        Image("cover\(index + 1)")
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .padding(40)
                                        
                                    }
                                    
                                    
                                }
                                .cornerRadius(12)
                                .buttonStyle(.plain)
                                .padding(.top)
                                
                                .shadow(color: Color(.sRGB, red: 0, green: 0, blue: 0, opacity: 0.5), radius: 8, x: -5, y: 5)
                                
                                
                            })
                            
                        }
                        .padding(40)
                    }
                    
                }// END: Scroll View
                
            } //END: Geometry Reader
            
            .navigationTitle("My Library")
        }// END: NavView
        
    }
}

struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
            .environmentObject(BookModel())
    }
}
