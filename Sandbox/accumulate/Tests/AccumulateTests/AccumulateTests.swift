import XCTest
@testable import Accumulate

private extension String {
    var length: Int {return self.characters.count}

    func reverse() -> String {
        var result: String = ""
        for char in self.characters {
            result = "\(char)\(result)"
        }
        return result
    }
}

private extension XCTest {
    func XCTAssertEqualMultiArray(_ aArray1: [[String]], _ aArray2: [[String]]) {
        XCTAssertEqual(Array(aArray1.joined()), Array(aArray2.joined()))
    }
}

class AccumulateTests: XCTestCase {
    func testEmptyAccumulation() {
        print("$")
        let input = [Int]()
        func square(_ input: Int) -> Int {
            return input * input
        }
        let result = input.accumulate(square)

        XCTAssertTrue(result.isEmpty)
        print("title:빈 배열 판별")
        print("result:\(result.isEmpty)")
        print("exp:빈 배열을 판별합니다.")
    }

    func testAccumulateSquares() {
        print("$")
        let input = [1, 2, 3, 4]
        let expected = [1, 4, 9, 16]
        func square(_ input: Int) -> Int {
            return input * input
        }
        let result = input.accumulate(square)

        XCTAssertEqual(expected, result)
        print("title:제곱 연산")
        print("result:\(result)")
        print("exp:\(input) 가 입력값입니다. \(expected) 가 제대로 된 출력값입니다.")
    }

    func testAccumulateUpcases() {
        print("$")
        let input = ["hello", "world"]
        let expected = ["HELLO", "WORLD"]
        func toUpper(_ input: String) -> String {
            return input.uppercased()
        }
        let result = input.accumulate(toUpper)

        XCTAssertEqual(expected, result)
        print("title:대문자 만들기")
        print("result:\(result)")
        print("exp:\(input) 가 입력값입니다. \(expected) 가 제대로 된 출력값입니다.")
    }

    func testAccumulateReversedStrings() {
        print("$")
        let input =    ["the", "quick", "brown", "fox", "etc"]
        let expected = ["eht", "kciuq", "nworb", "xof", "cte"]
        func reverse(_ input: String) -> String {
            return input.reverse()
        }
        let result = input.accumulate(reverse)

        XCTAssertEqual(expected, result)
        print("title:문자열 뒤집기")
        print("result:\(result)")
        print("exp:\(input) 가 입력값입니다. \(expected) 가 제대로 된 출력값입니다.")
    }

    func testAccumulateRecursively() {
        print("$")
        let input =   ["a", "b", "c"]
        let expected = [
            ["a1", "a2", "a3"],
            ["b1", "b2", "b3"],
            ["c1", "c2", "c3"]
        ]
        func recurse(_ input: String) -> [String] {
            func appendTo(_ innerInput: String) -> String {
                return input+innerInput
            }
            let result = ["1", "2", "3"].accumulate(appendTo)
            return result
        }
        let result = input.accumulate(recurse)

        XCTAssertEqualMultiArray(expected, result)
        print("title:재귀 연산")
        print("result:\(result)")
        print("exp:\(input) 가 입력값입니다. \(expected) 가 제대로 된 출력값입니다.")
    }

    static var allTests: [(String, (AccumulateTests) -> () throws -> Void)] {
        return [
            ("testEmptyAccumulation", testEmptyAccumulation),
            ("testAccumulateSquares", testAccumulateSquares),
            ("testAccumulateUpcases", testAccumulateUpcases),
            ("testAccumulateReversedStrings", testAccumulateReversedStrings),
            ("testAccumulateRecursively", testAccumulateRecursively),
        ]
    }
}
