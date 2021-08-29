//
//  ReaderView.swift
//  BookAppChallenge
//
//  Created by Joshua Curry on 8/29/21.
//

import SwiftUI

struct ReaderView: View {
    var book: Book
    
    var body: some View {
        TabView {
            ForEach(0..<book.content.count) { index in
                VStack {
                    Text("\(book.content[index])")
                        .padding()
                    Text("\(index+1)")
                        .padding()
                }
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
    }
}

struct ReaderView_Previews: PreviewProvider {
    static var previews: some View {
        ReaderView(book: BookViewModel().books[0])
    }
}
