import XCTest
@testable import CustomSet

class CustomSetTests: XCTestCase {
    let emptyTypedArray = [Int]()

    func testEqual() {
        print("$")
        XCTAssertEqual(CustomSet([1, 3]), CustomSet([3, 1]))
        XCTAssertNotEqual(CustomSet([1, 3]), CustomSet([3, 1, 5]))
        XCTAssertNotEqual(CustomSet([1, 3, 5]), CustomSet([3, 1]))
        XCTAssertNotEqual(CustomSet([1, 3]), CustomSet([2, 1]))
        print("title:두 집합이 같은가")
        print("result:")
        print("exp:")
    }

    func testNoDuplicates() {
        print("$")
        XCTAssertEqual(CustomSet([1, 1]), CustomSet([1]))
        print("title:중복된 요소를 입력받을 때")
        print("result:")
        print("exp:같은 요소를 중복되게 전달받으면 하나의 요소만 가지고 있어야 합니다.")
    }

    func testDeleteMethod() {
        print("$")
        var expected1 = CustomSet([3, 2, 1])
        expected1.delete(2)
        XCTAssertEqual(CustomSet([1, 3]), expected1)

        var expected2 = CustomSet([3, 2, 1])
        expected2.delete(4)
        XCTAssertEqual(CustomSet([1, 2, 3]), expected2)
        
        print("title:요소 삭제하기")
        print("result:")
        print("exp:")
    }

    func testDifference() {
        print("$")
        XCTAssertEqual(CustomSet([1, 3]),
                       CustomSet([1, 2, 3]).difference(CustomSet([2, 4])))
        XCTAssertEqual(CustomSet([2, 3]),
                       CustomSet([1, 2, 3, 4]).difference(CustomSet([1, 4])))
        print("title:차집합의 연산")
        print("result:")
        print("exp:")
    }

    func testDisjoint() {
        print("$")
        XCTAssertTrue(CustomSet([1, 2]).isDisjoint(CustomSet([3, 4])))
        XCTAssertFalse(CustomSet([1, 2]).isDisjoint(CustomSet([2, 3])))
        XCTAssertFalse(CustomSet([1.0, 2.0]).isDisjoint(CustomSet([2.0, 3.0])))
        print("title:교집합이 공집합인가")
        print("result:")
        print("exp:")
    }

    func testEmptyMethod() {
        print("$")
        var expected1 = CustomSet([1, 2])
        expected1.removeAll()
        XCTAssertEqual(CustomSet(emptyTypedArray ), expected1 )

        var expected2 = CustomSet(emptyTypedArray )
        expected2.removeAll()
        XCTAssertEqual(CustomSet(emptyTypedArray ), expected2 )
        print("title:빈 집합의 연산")
        print("result:")
        print("exp:")
    }
    func testIntersection() {
        print("$")
        XCTAssertEqual(CustomSet(["a", "c"]),
                       CustomSet(["a", "b", "c"]).intersection(CustomSet(["a", "c", "d"])))

        XCTAssertEqual(CustomSet([3.0]),
                       CustomSet([1.0, 2.0, 3.0]).intersection(CustomSet([3.0])))
        print("title:교집합의 연산")
        print("result:")
        print("exp:")
    }

    func testMember() {
        print("$")
        XCTAssertTrue(CustomSet([1, 2, 3]).containsMember(2))
        XCTAssertTrue(CustomSet([1, 2, 3]).containsMember(3))
        XCTAssertFalse(CustomSet([1, 2, 3]).containsMember(4))
        print("title:요소를 포함하고 있는지 검사")
        print("result:")
        print("exp:")
    }

    func testPutMethod() {
        print("$")
        var expected1 = CustomSet([1, 2, 4])
        expected1.put(3)
        XCTAssertEqual(CustomSet([1, 2, 3, 4]),
                       expected1)

        var expected2 = CustomSet([1, 2, 3])
        expected2.put(3)
        XCTAssertEqual(CustomSet([1, 2, 3]),
                       expected2)
        print("title:요소 삽입하기")
        print("result:")
        print("exp:")
    }

    func testSize() {
        print("$")
        XCTAssertEqual(0, CustomSet(emptyTypedArray).size)
        XCTAssertEqual(3, CustomSet([1, 2, 3]).size)
        XCTAssertEqual(3, CustomSet([1, 2, 3, 2]).size)
        print("title:집합의 크기 계산하기")
        print("result:")
        print("exp:")
    }

    func testSubsetMethod() {
        print("$")
        XCTAssertTrue(CustomSet([1, 2, 3]).isSupersetOf(CustomSet([1, 2, 3])))
        XCTAssertTrue(CustomSet([4, 1, 2, 3]).isSupersetOf(CustomSet([1, 2, 3])))
        XCTAssertFalse(CustomSet([4, 1, 3]).isSupersetOf(CustomSet([1, 2, 3])))
        XCTAssertFalse(CustomSet([1, 2, 3, 4]).isSupersetOf(CustomSet([1, 2, 5])))
        XCTAssertTrue(CustomSet([4, 1, 3]).isSupersetOf(CustomSet(emptyTypedArray)))
        XCTAssertTrue(CustomSet(emptyTypedArray).isSupersetOf(CustomSet(emptyTypedArray)))
        print("title:부분집합의 연산")
        print("result:")
        print("exp:")
    }

    func testToA() {
        print("$")
        XCTAssertEqual([1, 2, 3], CustomSet([3, 1, 2]).toSortedArray)
        XCTAssertEqual([1, 2, 3], CustomSet([3, 1, 2, 1]).toSortedArray)
        print("title:집합의 요소들을 정렬된 배열로 반환")
        print("result:")
        print("exp:")
    }

    func testUnion() {
        print("$")
        XCTAssertEqual(CustomSet([3, 2, 1]),
                       CustomSet([1, 3]).union(CustomSet([2])))
        XCTAssertEqual(CustomSet([3.0, 3, 2, 1]),
                       CustomSet([1, 3]).union(CustomSet([2, 3.0])))
        XCTAssertEqual(CustomSet([3, 1]),
                       CustomSet([1, 3]).union(CustomSet(emptyTypedArray)))
        XCTAssertEqual(CustomSet([2]),
                       CustomSet([2]).union(CustomSet(emptyTypedArray)))
        XCTAssertEqual(CustomSet(emptyTypedArray),
                       CustomSet(emptyTypedArray).union(CustomSet(emptyTypedArray)))
        print("title:합집합의 연산")
        print("result:")
        print("exp:")
    }

    static var allTests: [(String, (CustomSetTests) -> () throws -> Void)] {
        return [
            ("testEqual", testEqual),
            ("testNoDuplicates", testNoDuplicates),
            ("testDeleteMethod", testDeleteMethod),
            ("testDifference", testDifference),
            ("testDisjoint", testDisjoint),
            ("testEmptyMethod", testEmptyMethod),
            ("testIntersection", testIntersection),
            ("testMember", testMember),
            ("testPutMethod", testPutMethod),
            ("testSize", testSize),
            ("testSubsetMethod", testSubsetMethod),
            ("testToA", testToA),
            ("testUnion", testUnion),
        ]
    }
}
