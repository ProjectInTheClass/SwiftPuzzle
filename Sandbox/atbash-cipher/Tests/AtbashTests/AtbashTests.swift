  import XCTest
@testable import Atbash

class AtbashTests: XCTestCase {

    func testEncodeNo() {
        print("$")
        XCTAssertEqual("ml", Atbash.encode("no") )
        print("title:no 를 암호화")
        print("result:\(Atbash.encode("no"))")
        print("exp:ml 로 암호화되어야 합니다.")
    }

    func testEncodeYes() {
        print("$")
        XCTAssertEqual("bvh", Atbash.encode("yes") )
        print("title:yes 를 암호화")
        print("result:\(Atbash.encode("yes"))")
        print("exp:bvh 로 암호화되어야 합니다.")
    }

    func testEncodeOMG() {
        print("$")
        XCTAssertEqual("lnt", Atbash.encode("OMG") )
        print("title:OMG 를 암호화")
        print("result:\(Atbash.encode("OMG"))")
        print("exp:lnt 로 암호화되어야 합니다.")
    }

    func testEncodeOMGWithSpaces() {
        print("$")
        XCTAssertEqual("lnt", Atbash.encode("O M G") )
        print("title:O M G 를 암호화")
        print("result:\(Atbash.encode("O M G"))")
        print("exp:lnt 로 암호화되어야 합니다.")
    }

    func testEncodeLongWord() {
        print("$")
        XCTAssertEqual("nrmwy oldrm tob", Atbash.encode("mindblowingly") )
        print("title:mindblowingly 를 암호화")
        print("result:\(Atbash.encode("mindblowingly"))")
        print("exp:nrmwy oldrm tob 로 암호화되어야 합니다.")
    }

    func testEncodeNumbers() {
        print("$")
        XCTAssertEqual("gvhgr mt123 gvhgr mt",
                       Atbash.encode("Testing, 1 2 3, testing.") )
        print("title:Testing, 1 2 3, testing. 를 암호화")
        print("result:\(Atbash.encode("Testing, 1 2 3, testing."))")
        print("exp:gvhgr mt123 gvhgr mt 로 암호화되어야 합니다.")
    }

    func testEncodeSentence() {
        print("$")
        XCTAssertEqual("gifgs rhurx grlm", Atbash.encode("Truth is fiction.") )
        print("title:Truth is fiction. 를 암호화")
        print("result:\(Atbash.encode("Truth is fiction."))")
        print("exp:gifgs rhurx grlm 로 암호화되어야 합니다.")
    }

    func testEncodeAllTheThings() {
        print("$")
        let plaintext = "The quick brown fox jumps over the lazy dog."
        let cipher = "gsvjf rxpyi ldmul cqfnk hlevi gsvoz abwlt"
        XCTAssertEqual(cipher, Atbash.encode(plaintext) )
        print("title:긴 문장 암호화")
        print("result:\(Atbash.encode(plaintext))")
        print("exp:The quick brown fox jumps over the lazy dog. 를 암호화합니다. gsvjf rxpyi ldmul cqfnk hlevi gsvoz abwlt 로 암호화되어야 합니다.")
    }

    static var allTests: [(String, (AtbashTests) -> () throws -> Void)] {
        return [
            ("testEncodeNo", testEncodeNo),
            ("testEncodeYes", testEncodeYes),
            ("testEncodeOMG", testEncodeOMG),
            ("testEncodeOMGWithSpaces", testEncodeOMGWithSpaces),
            ("testEncodeLongWord", testEncodeLongWord),
            ("testEncodeNumbers", testEncodeNumbers),
            ("testEncodeSentence", testEncodeSentence),
            ("testEncodeAllTheThings", testEncodeAllTheThings),
        ]
    }
}
