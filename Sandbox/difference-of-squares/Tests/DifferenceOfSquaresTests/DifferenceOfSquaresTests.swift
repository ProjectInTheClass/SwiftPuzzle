import XCTest
@testable import DifferenceOfSquares

class DifferenceOfSquaresTests: XCTestCase {

    func testSquareOfSumsTo5() {
        print("$")
        XCTAssertEqual(225, Squares(5).squareOfSums)
        print("title:합의 제곱")
        print("result:\(Squares(5).squareOfSums)")
        print("exp:5의 합의 제곱은 225가 되어야 합니다.")
    }

    func testSumOfSquaresTo5() {
        print("$")
        XCTAssertEqual(55, Squares(5).sumOfSquares)
        print("title:제곱의 합")
        print("result:\(Squares(5).sumOfSquares)")
        print("exp:5의 제곱의 합은 55가 되어야 합니다.")
    }

    func testDifferenceOfSquaresOfSumsTo5() {
        print("$")
        XCTAssertEqual(170, Squares(5).differenceOfSquares)
        print("title:합의 제곱과 제곱의 합의 차")
        print("result:\(Squares(5).differenceOfSquares)")
        print("exp:5의 합의 제곱과 제곱의 합의 차는 170이 되어야 합니다.")
    }

    func testSquareOfSumsTo10() {
        print("$")
        XCTAssertEqual(3025, Squares(10).squareOfSums)
        print("title:합의 제곱")
        print("result:\(Squares(10).squareOfSums)")
        print("exp:10의 합의 제곱은 3025가 되어야 합니다.")
    }

    func testSumOfSquaresTo10() {
        print("$")
        XCTAssertEqual(385, Squares(10).sumOfSquares)
        print("title:제곱의 합")
        print("result:\(Squares(10).sumOfSquares)")
        print("exp:10의 제곱의 합은 385가 되어야 합니다.")
    }

    func testDifferenceOfSquaresOfSumsTo10() {
        print("$")
        XCTAssertEqual(2640, Squares(10).differenceOfSquares)
        print("title:합의 제곱과 제곱의 합의 차")
        print("result:\(Squares(10).differenceOfSquares)")
        print("exp:10의 합의 제곱과 제곱의 합의 차는 2640이 되어야 합니다.")
    }

    func testSquareOfSumsTo100() {
        print("$")
        XCTAssertEqual(25_502_500, Squares(100).squareOfSums)
        print("title:합의 제곱")
        print("result:\(Squares(100).squareOfSums)")
        print("exp:100의 합의 제곱은 25,502,500 이 되어야 합니다.")
    }

    func testSumOfSquaresTo100() {
        print("$")
        XCTAssertEqual(338_350, Squares(100).sumOfSquares)
        print("title:제곱의 합")
        print("result:\(Squares(100).sumOfSquares)")
        print("exp:100의 제곱의 합은 338,350가 되어야 합니다.")
    }

    func testDifferenceOfSquaresOfSumsTo100() {
        print("$")
        XCTAssertEqual(25_164_150, Squares(100).differenceOfSquares)
        print("title:합의 제곱과 제곱의 합의 차")
        print("result:\(Squares(100).differenceOfSquares)")
        print("exp:100의 합의 제곱과 제곱의 합의 차는 25,164,150이 되어야 합니다.")
    }

    static var allTests: [(String, (DifferenceOfSquaresTests) -> () throws -> Void)] {
        return [
            ("testSquareOfSumsTo5", testSquareOfSumsTo5),
            ("testSumOfSquaresTo5", testSumOfSquaresTo5),
            ("testDifferenceOfSquaresOfSumsTo5", testDifferenceOfSquaresOfSumsTo5),
            ("testSquareOfSumsTo10", testSquareOfSumsTo10),
            ("testSumOfSquaresTo10", testSumOfSquaresTo10),
            ("testDifferenceOfSquaresOfSumsTo10", testDifferenceOfSquaresOfSumsTo10),
            ("testSquareOfSumsTo100", testSquareOfSumsTo100),
            ("testSumOfSquaresTo100", testSumOfSquaresTo100),
            ("testDifferenceOfSquaresOfSumsTo100", testDifferenceOfSquaresOfSumsTo100),
        ]
    }
}
