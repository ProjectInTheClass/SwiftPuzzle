import XCTest
@testable import Anagram

class AnagramTests: XCTestCase {

    func testNoMatches() {
        print("$")
        let anagram = Anagram(word: "diaper")
        let results = anagram.match(["hello", "world", "zombies", "pants"])
        let expected = [String]()
        XCTAssertEqual(results, expected)
        print("title:diaper 의 아나그램")
        print("result:\(results)")
        print("exp:\(["hello", "world", "zombies", "pants"]) 안에는 diaper 의 아나그램이 없어야 합니다.")
    }
    func testDetectSimpleAnagram() {
        print("$")
        let anagram = Anagram(word: "ant")
        let results = anagram.match(["tan", "stand", "at"])
        let expected = ["tan"]
        XCTAssertEqual(results, expected)
        print("title:ant 의 아나그램")
        print("result:\(results)")
        print("exp:\(["tan", "stand", "at"]) 이 입력값으로 주어집니다.")
    }

    func testDetectMultipleAnagrams() {
        print("$")
        let anagram = Anagram(word: "master")
        let results = anagram.match(["stream", "pigeon", "maters"])
        let expected = ["stream", "maters"]
        XCTAssertEqual(results, expected)
        print("title:master 의 아나그램")
        print("result:\(results)")
        print("exp:\(["stream", "pigeon", "maters"]) 이 입력값으로 주어집니다.")
    }

    func testDoesNotConfuseDifferentDuplicates() {
        print("$")
        let anagram = Anagram(word: "galea")
        let results = anagram.match(["eagle"])
        let expected = [String]()
        XCTAssertEqual(results, expected)
        print("title:galea 의 아나그램")
        print("result:\(results)")
        print("exp:\(["eagle"]) 이 입력값으로 주어집니다.")
    }

    func testIdenticalWordIsNotAnagram() {
        print("$")
        let anagram = Anagram(word: "corn")
        let results = anagram.match(["corn", "dark", "Corn", "rank", "CORN", "cron", "park"])
        let expected = ["cron"]
        XCTAssertEqual(results, expected)
        print("title:corn 의 아나그램")
        print("result:\(results)")
        print("exp:\(["corn", "dark", "Corn", "rank", "CORN", "cron", "park"]) 이 입력값으로 주어집니다.")
    }

    func testEliminateAnagramsWithSameChecksum() {
        print("$")
        let anagram = Anagram(word: "mass")
        let results = anagram.match(["last"])
        let expected = [String]()
        XCTAssertEqual(results, expected)
        print("title:mass 의 아나그램")
        print("result:\(results)")
        print("exp:\(["last"]) 이 입력값으로 주어집니다.")
    }

    func testEliminateAnagramSubsets() {
        print("$")
        let anagram = Anagram(word: "good")
        let results = anagram.match(["dog", "goody"])
        let expected = [String]()
        XCTAssertEqual(results, expected)
        print("title:good 의 아나그램")
        print("result:\(results)")
        print("exp:\(["dog", "goody"]) 이 입력값으로 주어집니다.")
    }

    func testDetectAnagram() {
        print("$")
        let anagram = Anagram(word: "listen")
        let results = anagram.match(["enlists", "google", "inlets", "banana"])
        let expected = ["inlets"]
        XCTAssertEqual(results, expected)
        print("title:listen 의 아나그램")
        print("result:\(results)")
        print("exp:\(["enlists", "google", "inlets", "banana"]) 이 입력값으로 주어집니다.")
    }

    func testMultipleAnagrams() {
        print("$")
        let anagram = Anagram(word: "allergy")
        let results = anagram.match(["gallery", "ballerina", "regally", "clergy", "largely", "leading"])
        let expected = ["gallery", "regally", "largely"]
        XCTAssertEqual(results, expected)
        print("title:allergy 의 아나그램")
        print("result:\(results)")
        print("exp:\(["gallery", "ballerina", "regally", "clergy", "largely", "leading"]) 이 입력값으로 주어집니다.")
    }

    func testAnagramsAreCaseInsensitive() {
        print("$")
        let anagram = Anagram(word: "Orchestra")
        let results = anagram.match(["cashregister", "Carthorse", "radishes"])
        let expected = ["Carthorse"]
        XCTAssertEqual(results, expected)
        print("title:Orchestra 의 아나그램")
        print("result:\(results)")
        print("exp:\(["cashregister", "Carthorse", "radishes"]) 이 입력값으로 주어집니다.")
    }

    static var allTests: [(String, (AnagramTests) -> () throws -> Void)] {
        return [
            ("testNoMatches", testNoMatches),
            ("testDetectSimpleAnagram", testDetectSimpleAnagram),
            ("testDetectMultipleAnagrams", testDetectMultipleAnagrams),
            ("testDoesNotConfuseDifferentDuplicates", testDoesNotConfuseDifferentDuplicates),
            ("testIdenticalWordIsNotAnagram", testIdenticalWordIsNotAnagram),
            ("testEliminateAnagramsWithSameChecksum", testEliminateAnagramsWithSameChecksum),
            ("testEliminateAnagramSubsets", testEliminateAnagramSubsets),
            ("testDetectAnagram", testDetectAnagram),
            ("testMultipleAnagrams", testMultipleAnagrams),
            ("testAnagramsAreCaseInsensitive", testAnagramsAreCaseInsensitive),
        ]
    }
}
