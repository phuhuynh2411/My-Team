//
//  MyTeamDetailView.swift
//  MyTeam
//
//  Created by Huong on 11/18/21.
//

import SwiftUI

struct MyTeamDetailView: View {
    @State var people: People
    
    var body: some View {
        VStack(spacing: 30) {
            HStack {
                AsyncImage(
                    url: people.remoteURL,
                    content: { image in
                        image.resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(maxWidth: 100, maxHeight: 100)
                    },
                    placeholder: {
                        ProgressView()
                    }
                )
                .clipShape(Circle())
                Spacer()
            }
            
            HStack {
                Text(people.name)
                    .font(.system(size: 30, weight: .bold, design: .default))
                Spacer()
            }
            
            HStack(spacing: 30) {
                Text("Position")
                    .foregroundColor(.gray)
                    .font(.system(size: 20))
                Spacer()
                Text(people.position)
                    .font(.system(size: 20))
                Spacer()
            }
            
            HStack(spacing: 30) {
                Text("Office")
                    .foregroundColor(.gray)
                    .font(.system(size: 20))
                Spacer()
                
                Text(people.office)
                    .font(.system(size: 20))
                Spacer()
            }
            
            HStack {
                Spacer()
                Text(people.email)
                    .font(.system(size: 25))
                    .foregroundColor(.white)
                Spacer()
            }
            .frame(height: 50)
            .background(.blue)
            .cornerRadius(5.0)
            
            HStack {
                Spacer()
                Text(people.phoneNumber)
                    .font(.system(size: 25))
                    .foregroundColor(.white)
                Spacer()
            }
            .frame(height: 50)
            .background(.cyan)
            .cornerRadius(5.0)
            
            Spacer()
        }
        .padding()
    }
}

struct MyTeamDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MyTeamDetailView(people: SampleData.listPeople()[0])
    }
}
