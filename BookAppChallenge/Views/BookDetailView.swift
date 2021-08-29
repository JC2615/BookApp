//
//  BookDetailView.swift
//  BookAppChallenge
//
//  Created by Joshua Curry on 8/29/21.
//

import SwiftUI

struct BookDetailView: View {
    var book: Book
    var bookIndex: Int
    @Binding var isSavedForLater: Bool
    @State var rating = 1
    
    var body: some View {
            VStack {
                NavigationLink(
                    destination: ReaderView(book: book),
                    label: {
                        VStack {
                            Text("Read Now!")
                                .font(.largeTitle)
                                .padding()
                            Image("cover\(bookIndex + 1)")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 300, height: 400, alignment: .center)
                        }
                        .foregroundColor(.black)
                    })
                
                Text("Mark for later!")
                    .padding([.top, .leading, .trailing])
                
                Button(action: {
                    isSavedForLater.toggle()
                }, label: {
                    Image(systemName: isSavedForLater ? "star.fill" : "star")
                })
                .padding([.top, .leading, .trailing])
                
                Text("Rate Text")
                    .padding()
                Picker("Rate Text", selection: $rating) {
                    Text("1").tag(1)
                    Text("2").tag(2)
                    Text("3").tag(3)
                    Text("4").tag(4)
                    Text("5").tag(5)
                }
                .pickerStyle(SegmentedPickerStyle())
                
        }
            .navigationTitle(book.title)
    }
}

//struct BookDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        BookDetailView(book: BookViewModel().books[0], bookIndex: 0, isSavedForLater: false)
//    }
//}
