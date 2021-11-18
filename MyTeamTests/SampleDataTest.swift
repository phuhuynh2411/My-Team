//
//  SampleData.swift
//  MyTeamTests
//
//  Created by Huong on 11/18/21.
//

import XCTest
@testable import MyTeam


class SampleDataTest: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testLoadPeopleFromJSON() throws {
        let listPeople = SampleData.listPeople()
        XCTAssertGreaterThan(listPeople.count, 0)
    }
}
