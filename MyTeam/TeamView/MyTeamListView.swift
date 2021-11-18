//
//  MyTeamListView.swift
//  MyTeam
//
//  Created by Huong on 11/18/21.
//

import SwiftUI

struct MyTeamListView: View {
    @ObservedObject var viewModel: MyTeamListViewModel
    
    var body: some View {
        NavigationView {
            List(viewModel.listPeople){ people in
                NavigationLink {
                    MyTeamDetailView(people: people)
                } label: {
                    PeopleRowView(people: people)
                }
            }
            .listStyle(GroupedListStyle())
            .navigationTitle("My Team")
        }
    }
}

struct MyTeamListView_Previews: PreviewProvider {
    static var previews: some View {
        MyTeamListView(viewModel:
                        MyTeamListViewModel(listPeople: SampleData.listPeople())
        )
    }
}
