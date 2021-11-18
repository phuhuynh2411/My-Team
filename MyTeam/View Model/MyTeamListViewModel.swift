//
//  MyTeamListViewModel.swift
//  MyTeam
//
//  Created by Huong on 11/18/21.
//

import Foundation

class MyTeamListViewModel: ObservableObject {
    @Published var listPeople: [People]
    
    init(listPeople: [People]) {
        self.listPeople = listPeople
    }
}
