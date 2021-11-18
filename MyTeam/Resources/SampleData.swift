//
//  SampleData.swift
//  MyTeam
//
//  Created by Huong on 11/18/21.
//

import Foundation

struct SampleData {
    
    static private var people = "people"
    
    static func listPeople() -> [People] {
        var listPeople = [People]()
        
        if let filePath = Bundle.main.url(forResource: "people", withExtension: "json") {
            do {
                let data = try Data(contentsOf: filePath)
                try listPeople = JSONDecoder().decode([People].self, from: data)
            } catch {
                print(error.localizedDescription)
            }
        } else {
            print("Could not find the resource file \(people).json")
        }
       
        return listPeople
    }
}
