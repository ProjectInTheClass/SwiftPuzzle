import XCTest
@testable import HelloWorld

class HelloWorldTests: XCTestCase {

    func testNoName() {
        print("$")
        let expected = "Hello, World!"
        XCTAssertEqual(HelloWorld.hello(), expected, "When given no name, we should greet the world!")
        print("title:기본 인사")
        print("result:\(HelloWorld.hello())")
        print("exp:아무 이름도 주어지지 않으면 Hello, World! 라고 말해야 합니다.")
    }

    func testSampleName() {
        print("$")
        let expected = "Hello, Alice!"
        XCTAssertEqual(HelloWorld.hello("Alice"), expected, "When given 'Alice' we should greet Alice!")
        print("title:인사 1")
        print("result:\(HelloWorld.hello("Alice"))")
        print("exp:Alice 에게 Hello, Alice! 라고 인사해야 합니다.")
    }

    func testOtherSampleName() {
        print("$")
        let expected = "Hello, Bob!"
        XCTAssertEqual(HelloWorld.hello("Bob"), expected, "When given 'Bob' we should greet Bob!")
        print("title:인사 2")
        print("result:\(HelloWorld.hello("Bob"))")
        print("exp:Bob 에게 Hello, Bob! 라고 인사해야 합니다.")
    }

    func testNoStrangeName() {
        print("$")
        let expected = "Hello, !"
        XCTAssertEqual(HelloWorld.hello(""), expected, "When given an empty string, it is strange, but should have a space and punctuation")
        print("title:인사 3")
        print("result:\(HelloWorld.hello(""))")
        print("exp:이름없는 사람에게 Hello, ! 라고 인사해야 합니다.")
    }

    static var allTests: [(String, (HelloWorldTests) -> () throws -> Void)] {
        return [
            ("testNoName", testNoName),
            ("testSampleName", testSampleName),
            ("testOtherSampleName", testOtherSampleName),
            ("testNoStrangeName", testNoStrangeName),
        ]
    }
}
