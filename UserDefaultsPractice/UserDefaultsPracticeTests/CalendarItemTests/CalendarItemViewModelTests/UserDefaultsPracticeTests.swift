//
//  UserDefaultsPracticeTests.swift
//  UserDefaultsPracticeTests
//
//  Created by admin on 27.06.2022.
//

import XCTest
@testable import UserDefaultsPractice

class UserDefaultsPracticeTests: XCTestCase {

    func testSaveElement() {
        let service = UserDefaultsServiceMock(numbers: [3,4,5,6])
        let calendarViewModel = CalendarItemViewModel(number: 1, userProtocol: service)
        XCTAssertFalse(calendarViewModel.completed)
        XCTAssertEqual(service.numbers.count, 4)
        calendarViewModel.onTap()
        XCTAssertTrue(calendarViewModel.completed)
        XCTAssertEqual(service.numbers.count, 5)
        calendarViewModel.onTap()
        XCTAssertFalse(calendarViewModel.completed)
        XCTAssertEqual(service.numbers.count, 4)

    }

}
