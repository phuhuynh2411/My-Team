//
//  People.swift
//  MyTeam
//
//  Created by Huong on 11/18/21.
//

import Foundation

struct People: Identifiable, Codable {
    let id: Int
    let name: String
    let position: String
    let office: String
    let email: String
    let phoneNumber: String
    let department: String
    let imageUrl: String
}

extension People {
    var remoteURL: URL? {
        URL(string: imageUrl)
    }
}

extension People: Comparable {
    static func < (lhs: People, rhs: People) -> Bool {
        lhs.id == rhs.id
    }
}
