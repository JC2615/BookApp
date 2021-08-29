//
//  BookViewModel.swift
//  BookAppChallenge
//
//  Created by Joshua Curry on 8/25/21.
//

import Foundation

class BookViewModel: ObservableObject {
    @Published var books: [Book] = []
    
    init() {
        books = FetchData.getLocalData()
    }
    
}
