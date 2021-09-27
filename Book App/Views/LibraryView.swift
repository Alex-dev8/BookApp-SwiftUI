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
                    LazyVStack(spacing: 40) {
                        ForEach(0..<model.books.count) { index in
                            Button(action: {
                                
                            }, label: {
                                ZStack {
                                    Rectangle()
                                        .foregroundColor(.white)
                                    
                                    VStack(alignment: .leading) {
                                        Text("Hello")
                                            .font(.largeTitle)
                                            .foregroundColor(.primary)
                                        Text("world")
                                            .font(.subheadline)
                                            .foregroundColor(.primary)
                                        Image("cover1")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: geo.size.width - 200, height: geo.size.height - 400, alignment: .center)
                                        
                                    }
                                    
                                }
                                .cornerRadius(12)
                                .buttonStyle(.plain)
                                .padding(.top)
                                .frame(width: geo.size.width - 80, height: geo.size.height - 200, alignment: .center)
                                .shadow(color: Color(.sRGB, red: 0, green: 0, blue: 0, opacity: 0.5), radius: 8, x: -5, y: 5)
                                
                                
                            })
                            
                        }
                      
                    }
                    
                }// END: Scroll View
                
            }
            
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
