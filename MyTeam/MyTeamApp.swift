//
//  MyTeamApp.swift
//  MyTeam
//
//  Created by Huong on 11/18/21.
//

import SwiftUI

@main
struct MyTeamApp: App {
    var body: some Scene {
        WindowGroup {
            MyTeamListView(viewModel:
                            MyTeamListViewModel(listPeople: SampleData.listPeople())
            )
        }
    }
}
