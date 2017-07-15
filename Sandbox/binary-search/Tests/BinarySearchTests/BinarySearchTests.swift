import XCTest
@testable import BinarySearch

class BinarySearchTests: XCTestCase {

    func testHasListData() {
        print("$")
        let binary = try! BinarySearch([1, 3, 4, 6, 8, 9, 11])
        XCTAssertEqual([1, 3, 4, 6, 8, 9, 11], binary.list)
        print("title:\([1, 3, 4, 6, 8, 9, 11])")
        print("result:\(binary.list)")
        print("exp:\([1, 3, 4, 6, 8, 9, 11]) 이 결과로 나와야 합니다.")
    }

    func testThrowsErrorForUnsortedList() {
        print("$")
        XCTAssertThrowsError(_ = try BinarySearch([2, 1, 4, 3, 6])) { error in
            XCTAssertEqual(error as? BinarySearchError, BinarySearchError.unsorted)
            print("title:\([2, 1, 4, 3, 6])")
            print("result:\(error as! BinarySearchError)")
            print("exp:정렬되어있지 않으므로 \(BinarySearchError.unsorted) 이 결과로 나와야 합니다.")
        }
        
    }

    func testNilForDataNotInList() {
        print("$")
        XCTAssertNil(try! BinarySearch([1, 3, 6]).searchFor(2))
        print("title:\([1, 3, 6]) 에서 2의 위치")
        print("result:\(BinarySearch([1, 3, 6]).searchFor(2))")
        print("exp:2는 목록에 없으므로 nil 이 결과로 나와야 합니다.")
    }

    func testFindsPositionOfMiddleItem() {
        print("$")
        let binary = try! BinarySearch([1, 3, 4, 6, 8, 9, 11])
        XCTAssertEqual(3, binary.middle)
        print("title:\([1, 3, 4, 6, 8, 9, 11]) 의 가운데 있는 값")
        print("result:\(binary.middle)")
        print("exp:3 이 결과로 나와야 합니다.")
    }

    func testFindsPositionOfSearchData() {
        print("$")
        let binary = try! BinarySearch([1, 3, 4, 6, 8, 9, 11])
        XCTAssertEqual(5, binary.searchFor(9))
        print("title:\([1, 3, 4, 6, 8, 9, 11]) 에서 9의 위치")
        print("result:\(binary.searchFor(9))")
        print("exp:5 가 결과로 나와야 합니다.")
    }

    func testFindsPositionInALargerList() {
        print("$")
        let binary = try! BinarySearch([1, 3, 5, 8, 13, 21, 34, 55, 89, 144])
        XCTAssertEqual(1, binary.searchFor(3))
        XCTAssertEqual(7, binary.searchFor(55))
        print("title:긴 배열에서의 탐색 1")
        print("result:3의 위치:\(binary.searchFor(3)), 55의 위치:\(binary.searchFor(55))")
        print("exp:\([1, 3, 5, 8, 13, 21, 34, 55, 89, 144]) 에서 3과 55를 검색합니다. 1과 7이 각각 결과로 나와야 합니다.")
    }

    func testFindsCorrectPositionInAListWithAnEvenNumberOfElements() {
        print("$")
        let binary = try! BinarySearch([1, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377])
        XCTAssertEqual(5, binary.searchFor(21))
        XCTAssertEqual(6, binary.searchFor(34))
        print("title:긴 배열에서의 탐색 2")
        print("result:21의 위치:\(binary.searchFor(21)), 34의 위치:\(binary.searchFor(34))")
        print("exp:\([1, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377]) 에서 21과 34를 검색합니다. 5와 6이 각각 결과로 나와야 합니다.")
    }

    static var allTests: [(String, (BinarySearchTests) -> () throws -> Void)] {
        return [
            ("testHasListData", testHasListData),
            ("testThrowsErrorForUnsortedList", testThrowsErrorForUnsortedList),
            ("testNilForDataNotInList", testNilForDataNotInList),
            ("testFindsPositionOfMiddleItem", testFindsPositionOfMiddleItem),
            ("testFindsPositionOfSearchData", testFindsPositionOfSearchData),
            ("testFindsPositionInALargerList", testFindsPositionInALargerList),
            ("testFindsCorrectPositionInAListWithAnEvenNumberOfElements", testFindsCorrectPositionInAListWithAnEvenNumberOfElements),
        ]
    }
}
