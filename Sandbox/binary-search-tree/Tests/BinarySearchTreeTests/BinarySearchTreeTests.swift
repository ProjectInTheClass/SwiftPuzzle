import XCTest
@testable import BinarySearchTree

class BinarySearchTreeTests: XCTestCase {

    func testDataIsRetained() {
        print("$")
        XCTAssertEqual(4, BinarySearchTree(4).data)
        print("title:head node 생성하기")
        print("result:\(BinarySearchTree(4).data)")
        print("exp:4의 데이터를 넣은 node 하나를 생성합니다. 그 데이터는 4 여야 합니다.")
    }

    func testInsertingLess() {
        print("$")
        var four = BinarySearchTree(4)
        four.insert(2)
        XCTAssertEqual(4, four.data)
        XCTAssertEqual(2, four.left?.data)
        print("title:node 연결하기 1")
        print("result:\(four.left?.data)")
        print("exp:4의 head node 에 2의 데이터를 넣은 node 를 삽입합니다.")
    }

    func testInsertingSame() {
        print("$")
        var four = BinarySearchTree(4)
        four.insert(4)
        XCTAssertEqual(4, four.data)
        XCTAssertEqual(4, four.left?.data)
        print("title:node 연결하기 2")
        print("result:\(four.left?.data)")
        print("exp:4의 head node 에 4의 데이터를 넣은 node 를 삽입합니다.")
    }

    func testInsertingRight() {
        print("$")
        var four = BinarySearchTree(4)
        four.insert(5)
        XCTAssertEqual(4, four.data)
        XCTAssertEqual(5, four.right?.data)
        print("title:node 연결하기 3")
        print("result:\(four.right?.data)")
        print("exp:4의 head node 에 5의 데이터를 넣은 node 를 삽입합니다.")
    }

    func testComplexTree() {
        print("$")
        var four = BinarySearchTree(4)
        four.insert(2)
        four.insert(6)
        four.insert(1)
        four.insert(3)
        four.insert(7)
        four.insert(5)
        XCTAssertEqual(4, four.data)
        XCTAssertEqual(2, four.left?.data)
        XCTAssertEqual(1, four.left?.left?.data)
        XCTAssertEqual(3, four.left?.right?.data)
        XCTAssertEqual(6, four.right?.data)
        XCTAssertEqual(5, four.right?.left?.data)
        XCTAssertEqual(7, four.right?.right?.data)
        print("title:node 연결하기 4")
        print("result:\(four.left?.data), \(four.left?.left?.data), \(four.left?.right?.data), \(four.right?.data), \(four.right?.left?.data), \(four.right?.right?.data)")
        print("exp:4의 head node 에 2, 6, 1, 3, 7, 5 를 넣은 node 들을 차례로 삽입합니다. 4, 2, 1, 3, 6, 5, 7 순으로 나와야 합니다.")
    }

    func testAllDataForOneElement() {
        print("$")
        XCTAssertEqual([4], BinarySearchTree(4).allData())
        print("title:모든 데이터 출력하기 1")
        print("result:\(BinarySearchTree(4).allData())")
        print("exp:4의 head node 를 만듭니다. 모든 데이터를 출력하면 4만 나와야 합니다.")
    }

    func testAllDataForSmallerElement() {
        print("$")
        var four = BinarySearchTree(4)
        four.insert(2)
        XCTAssertEqual([2, 4], four.allData())
        print("title:모든 데이터 출력하기 2")
        print("result:\(BinarySearchTree(4).allData())")
        print("exp:4의 head node 를 만듭니다. 2 를 넣은 node 를 삽입합니다. 모든 데이터를 출력하면 2, 4가 나와야 합니다.")
    }

    func testAllDataForLargerElement() {
        print("$")
        var four = BinarySearchTree(4)
        four.insert(5)
        XCTAssertEqual([4, 5], four.allData())
        print("title:모든 데이터 출력하기 3")
        print("result:\(BinarySearchTree(4).allData())")
        print("exp:4의 head node 를 만듭니다. 5를 넣은 node 를 삽입합니다. 모든 데이터를 출력하면 4, 5가 나와야 합니다.")
    }

    func testAllDataForComplexTree() {
        print("$")
        var four = BinarySearchTree(4)
        four.insert(2)
        four.insert(1)
        four.insert(3)
        four.insert(6)
        four.insert(7)
        four.insert(5)
        XCTAssertEqual([1, 2, 3, 4, 5, 6, 7], four.allData())
        print("title:모든 데이터 출력하기 4")
        print("result:\(BinarySearchTree(4).allData())")
        print("exp:4의 head node 를 만듭니다. 2, 1, 3, 6, 7, 5를 넣은 node 를 차례로 삽입합니다. 모든 데이터를 출력하면 1, 2, 3, 4, 5, 6, 7 이 나와야 합니다.")
    }

    static var allTests: [(String, (BinarySearchTreeTests) -> () throws -> Void)] {
        return [
            ("testDataIsRetained", testDataIsRetained),
            ("testInsertingLess", testInsertingLess),
            ("testInsertingSame", testInsertingSame),
            ("testInsertingRight", testInsertingRight),
            ("testComplexTree", testComplexTree),
            ("testAllDataForOneElement", testAllDataForOneElement),
            ("testAllDataForSmallerElement", testAllDataForSmallerElement),
            ("testAllDataForLargerElement", testAllDataForLargerElement),
            ("testAllDataForComplexTree", testAllDataForComplexTree),
        ]
    }
}
