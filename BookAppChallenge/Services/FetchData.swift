//
//  FetchData.swift
//  BookAppChallenge
//
//  Created by Joshua Curry on 8/25/21.
//

import Foundation

class FetchData {
    static func getLocalData() -> [Book] {
        let pathString = Bundle.main.path(forResource: "Books", ofType: "json")
        
        if let pathString = pathString {
            let url = URL(fileURLWithPath: pathString)
            
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                
                do {
                    let bookData = try decoder.decode([Book].self, from: data)
                    return bookData
                } catch {
                    print(error.localizedDescription)
                }
            } catch {
                print(error.localizedDescription)
            }
            
        }
        return [Book]()
    }
}
