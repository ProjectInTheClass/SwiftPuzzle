import XCTest
@testable import Leap

class LeapTests: XCTestCase {

    func testVanillaLeapYear() {
        print("$")
        let year = Year(calendarYear: 1996)
        XCTAssertTrue(year.isLeapYear)
        print("title:1996년")
        print("result:\(year.isLeapYear)")
        print("exp:1996년은 윤년입니다.")
    }

    func testAnyOldYear() {
        print("$")
        let year = Year(calendarYear: 1997)
        XCTAssertFalse(year.isLeapYear)
        print("title:1997년")
        print("result:\(year.isLeapYear)")
        print("exp:1997년은 윤년이 아닙니다.")
    }

    func testCentury() {
        print("$")
        let year = Year(calendarYear: 1900)
        XCTAssertFalse(year.isLeapYear)
        print("title:1900년")
        print("result:\(year.isLeapYear)")
        print("exp:1900년은 윤년이 아닙니다.")
    }

    func testExceptionalCentury() {
        print("$")
        let year = Year(calendarYear: 2400)
        XCTAssertTrue(year.isLeapYear)
        print("title:2400년")
        print("result:\(year.isLeapYear)")
        print("exp:2400년은 윤년입니다.")
    }

    static var allTests: [(String, (LeapTests) -> () throws -> Void)] {
        return [
            ("testVanillaLeapYear", testVanillaLeapYear),
            ("testAnyOldYear", testAnyOldYear),
            ("testCentury", testCentury),
            ("testExceptionalCentury", testExceptionalCentury),
        ]
    }
}
