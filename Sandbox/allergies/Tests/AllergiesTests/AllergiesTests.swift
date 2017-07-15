import XCTest
@testable import Allergies

class AllergiesTests: XCTestCase {

    func testBob() {
        print("$")
        let allergies = Allergies(34)

        XCTAssertTrue(allergies.hasAllergy(.peanuts), "Bob is allergic to peanuts")
        XCTAssertTrue(allergies.hasAllergy(.chocolate), "Bob is allergic to chocolate")
        XCTAssertFalse(allergies.hasAllergy(.cats), "Bob is not allergic to cats")
        print("title:알레르기 점수 34점")
        print("result:땅콩:\(allergies.hasAllergy(.peanuts)), 초콜릿:\(allergies.hasAllergy(.chocolate)), 고양이:\(allergies.hasAllergy(.cats))")
        print("exp:땅콩은 true, 초콜릿은 true, 고양이는 false 가 나와야 합니다.")
    }

    func testEggsNcats() {
        print("$")
        let allergies = Allergies(129)

        XCTAssertTrue(allergies.hasAllergy(.eggs))
        XCTAssertTrue(allergies.hasAllergy(.cats))
        XCTAssertFalse(allergies.hasAllergy(.chocolate))
        print("title:알레르기 점수 129점")
        print("result:달걀:\(allergies.hasAllergy(.eggs)), 고양이:\(allergies.hasAllergy(.cats)), 초콜릿:\(allergies.hasAllergy(.chocolate))")
        print("exp:달걀은 true, 고양이는 true, 초콜릿은 false 가 나와야 합니다.")
    }

    func testNone() {
        print("$")
        let allergies = Allergies(0)

        XCTAssertFalse(allergies.hasAllergy(.pollen))
        print("title:알레르기 점수 0점")
        print("result:꽃가루:\(allergies.hasAllergy(.pollen))")
        print("exp:꽃가루는 false 가 나와야 합니다.")
    }

    func testAll() {
        print("$")
        let allInt =  UInt(Array(0...7).reduce(0) { return ($0 | (1 << $1)) })
        let allergies = Allergies(allInt)

        XCTAssertTrue(allergies.hasAllergy(.eggs))
        XCTAssertTrue(allergies.hasAllergy(.peanuts))
        XCTAssertTrue(allergies.hasAllergy(.shellfish))
        XCTAssertTrue(allergies.hasAllergy(.strawberries))
        XCTAssertTrue(allergies.hasAllergy(.tomatoes))
        XCTAssertTrue(allergies.hasAllergy(.chocolate))
        XCTAssertTrue(allergies.hasAllergy(.pollen))
        XCTAssertTrue(allergies.hasAllergy(.cats))

        print("title:알레르기 점수 \(allInt)점")
        print("result:달걀: \(allergies.hasAllergy(.eggs)), 땅콩: \(allergies.hasAllergy(.peanuts)), 조개: \(allergies.hasAllergy(.shellfish)), 딸기: \(allergies.hasAllergy(.strawberries)), 토마토: \(allergies.hasAllergy(.tomatoes)), 초콜릿: \(allergies.hasAllergy(.chocolate)), 꽃가루: \(allergies.hasAllergy(.pollen)), 고양이: \(allergies.hasAllergy(.cats))")
        print("exp:모든 것들에 대해 알레르기가 있어야 합니다.")
    }

    static var allTests: [(String, (AllergiesTests) -> () throws -> Void)] {
        return [
            ("testBob", testBob),
            ("testEggsNcats", testEggsNcats),
            ("testNone", testNone),
            ("testAll", testAll),
        ]
    }
}
