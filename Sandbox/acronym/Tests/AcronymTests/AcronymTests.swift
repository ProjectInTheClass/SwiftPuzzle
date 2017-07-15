import XCTest
@testable import Acronym

class AcronymTests: XCTestCase {
    func testAcronymAbbreviateTest1() {
        print("$")
        XCTAssertEqual("PNG", Acronym.abbreviate("Portable Network Graphics"))
        print("title:PNG")
        print("result:\(Acronym.abbreviate("Portable Network Graphics"))")
        print("exp:입력값으로 Portable Network Graphics를 받습니다.")
    }

    func testAcronymAbbreviateTest2() {
        print("$")
        XCTAssertEqual("ROR", Acronym.abbreviate("Ruby on Rails"))
        print("title:ROR")
        print("result:\(Acronym.abbreviate("Ruby on Rails"))")
        print("exp:입력값으로 Ruby on Rails를 받습니다.")
    }

    func testAcronymAbbreviateTest3() {
        print("$")
        XCTAssertEqual("HTML", Acronym.abbreviate("HyperText Markup Language"))
        print("title:HTML")
        print("result:\(Acronym.abbreviate("HyperText Markup Language"))")
        print("exp:입력값으로 HyperText Markup Language를 받습니다.")
    }

    func testAcronymAbbreviateTest4() {
        print("$")
        XCTAssertEqual("FIFO", Acronym.abbreviate("First In, First Out"))
        print("title:FIFO")
        print("result:\(Acronym.abbreviate("First In, First Out"))")
        print("exp:입력값으로 First In, First Out를 받습니다.")
    }

    func testAcronymAbbreviateTest5() {
        print("$")
        XCTAssertEqual("PHP", Acronym.abbreviate("PHP: Hypertext Preprocessor"))
        print("title:PHP")
        print("result:\(Acronym.abbreviate("PHP: Hypertext Preprocessor"))")
        print("exp:입력값으로 PHP: Hypertext Preprocessor를 받습니다.")
    }

    func testAcronymAbbreviateTest6() {
        print("$")
        XCTAssertEqual("CMOS", Acronym.abbreviate("Complementary metal-oxide semiconductor"))
        print("title:CMOS")
        print("result:\(Acronym.abbreviate("Complementary metal-oxide semiconductor"))")
        print("exp:입력값으로 Complementary metal-oxide semiconductor를 받습니다.")
    }

    static var allTests: [(String, (AcronymTests) -> () throws -> Void)] {
        return [
            ("testAcronymAbbreviateTest1", testAcronymAbbreviateTest1),
            ("testAcronymAbbreviateTest2", testAcronymAbbreviateTest2),
            ("testAcronymAbbreviateTest3", testAcronymAbbreviateTest3),
            ("testAcronymAbbreviateTest4", testAcronymAbbreviateTest4),
            ("testAcronymAbbreviateTest5", testAcronymAbbreviateTest5),
            ("testAcronymAbbreviateTest6", testAcronymAbbreviateTest6),
        ]
    }
}
