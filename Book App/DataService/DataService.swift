//
//  DataService.swift
//  Book App
//
//  Created by Alex Cannizzo on 27/09/2021.
//

import Foundation

class DataService {
    
    static func getLocalData() -> [Book] {
        
        guard let path = Bundle.main.path(forResource: "Data", ofType: "json") else { return [Book]() }
        
        let url = URL(fileURLWithPath: path)
        
        do {
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            
            do {
                let booksData = try decoder.decode([Book].self, from: data)
                return booksData
            } catch {
                print(error)
            }
            
        } catch {
            print(error)
        }
        
        // Return empty array if code reaches this point
        return [Book]()
    }
}
