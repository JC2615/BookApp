//
//  LibraryView.swift
//  BookAppChallenge
//
//  Created by Joshua Curry on 8/25/21.
//

import SwiftUI

struct LibraryView: View {
    @ObservedObject var model = BookViewModel()
    @State var isSavedForLater = false
    var body: some View {
        NavigationView {
            GeometryReader { geo in
                ScrollView {
                    LazyVStack {
                        ForEach(0..<model.books.count){ index in
                            NavigationLink(
                                destination: BookDetailView(book: model.books[index], bookIndex: index, isSavedForLater: $isSavedForLater),
                                label: {
                                    ZStack {
                                        Rectangle()
                                            .foregroundColor(.white)
                                            .frame(width: geo.size.width - 30, height: geo.size.height - 40, alignment: .center)
                                        VStack(alignment: .leading) {
                                            HStack {
                                                Text("\(model.books[index].title)")
                                                    .font(.largeTitle)
                                                    .fontWeight(.bold)
                                                    .padding(.leading)
                                                
                                                
                                                Image(systemName: isSavedForLater ? "star.fill" : "star")
                                            }
                                            
                                            
                                            Text("\(model.books[index].author)")
                                                .font(.headline)
                                                .padding(.leading)
                                            
                                            Image("cover\(index+1)")
                                                .resizable()
                                                .frame(width: geo.size.width - 50, height: geo.size.height - 150, alignment: .center)
                                                .padding([.leading, .bottom, .trailing])
                                            
                                        }
                                        
                                    }
                                    .cornerRadius(8)
                                    .shadow(radius: 10)
                                    .padding()
                                })
                                .foregroundColor(.black)
                            
                        }
                    }
                }
                .navigationTitle("My Library")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}
