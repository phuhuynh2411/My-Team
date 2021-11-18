//
//  PeopleRowView.swift
//  MyTeam
//
//  Created by Huong on 11/18/21.
//

import SwiftUI

struct PeopleRowView: View {
    @State var people: People
    
    var body: some View {
        HStack(spacing: 20) {
            AsyncImage(
                url: people.remoteURL,
                content: { image in
                    image.resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(maxWidth: 50, maxHeight: 50)
                },
                placeholder: {
                    ProgressView()
                }
            )
            .clipShape(Circle())
                        
            Text(people.name)
            
            Text(people.position)
                .foregroundColor(.gray)
            
            Spacer()
        }
    }
}

struct PeopleRowView_Previews: PreviewProvider {
    static var previews: some View {
        PeopleRowView(people: SampleData.listPeople()[0])
            .frame(height: 60)
    }
}
