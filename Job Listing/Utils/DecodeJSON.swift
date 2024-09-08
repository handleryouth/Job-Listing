//
//  DecodeJSON.swift
//  Job Listing
//
//  Created by Tony Gultom on 08/09/24.
//

import Foundation

func DecodeJSON<T: Decodable>(fileName: String) -> [T]? {
    if let url = Bundle.main.url(forResource: fileName, withExtension: "json") {
        do {
            /*
             It reads the contents of the JSON file into a Data object using Data(contentsOf:). If this fails (e.g., the file is not accessible), the catch block handles the error.
             */
            
            let data = try Data(contentsOf: url) /*  Data is a type that represents a sequence of raw bytes.*/
            /*
             It initializes a JSONDecoder and attempts to decode the data as an array of Product objects.
             */
            let decoder = JSONDecoder()
            let jsonData = try decoder.decode([T].self, from: data)
            return jsonData
        } catch {
            print("error:\(error)")
        }
    }
    return nil
}
