import XCTest
@testable import Bob

class BobTests: XCTestCase {

    func testStatingSomething() {
        print("$")
        let input = "Tom-ay-to, tom-aaaah-to."
        let expected = "Whatever."
        let result = Bob.hey(input)
        XCTAssertEqual(expected, result)
        print("title:대화 1")
        print("result:\(result)")
        print("exp:\(input) 을 말하면 \(expected) 라고 대답해야 합니다.")
    }

    func testShouting() {
        print("$")
        let input = "WATCH OUT!"
        let expected = "Woah, chill out!"
        let result = Bob.hey(input)
        XCTAssertEqual(expected, result)
        print("title:대화 2")
        print("result:\(result)")
        print("exp:\(input) 을 말하면 \(expected) 라고 대답해야 합니다.")
    }

    func testAskingAQustion() {
        print("$")
        let input = "Does this cryogenic chamber make me look fat?"
        let expected = "Sure."
        let result = Bob.hey(input)
        XCTAssertEqual(expected, result)
        print("title:대화 3")
        print("result:\(result)")
        print("exp:\(input) 을 말하면 \(expected) 라고 대답해야 합니다.")
    }

    func testTalkingForcefully() {
        print("$")
        let input = "Let's go make out behind the gym!"
        let expected = "Whatever."
        let result = Bob.hey(input)
        XCTAssertEqual(expected, result)
        print("title:대화 4")
        print("result:\(result)")
        print("exp:\(input) 을 말하면 \(expected) 라고 대답해야 합니다.")
    }

    func testUsingAcronyms() {
        print("$")
        let input = "It's OK if you don't want to go to the DMV."
        let expected = "Whatever."
        let result = Bob.hey(input)
        XCTAssertEqual(expected, result)
        print("title:대화 5")
        print("result:\(result)")
        print("exp:\(input) 을 말하면 \(expected) 라고 대답해야 합니다.")
    }

    func testForcefulQuestions() {
        print("$")
        let input = "WHAT THE HELL WERE YOU THINKING?"
        let expected = "Woah, chill out!"
        let result = Bob.hey(input)
        XCTAssertEqual(expected, result)
        print("title:대화 6")
        print("result:\(result)")
        print("exp:\(input) 을 말하면 \(expected) 라고 대답해야 합니다.")
    }

    func testShoutingNumbers() {
        print("$")
        let input = "1, 2, 3 GO!"
        let expected = "Woah, chill out!"
        let result = Bob.hey(input)
        XCTAssertEqual(expected, result)
        print("title:대화 7")
        print("result:\(result)")
        print("exp:\(input) 을 말하면 \(expected) 라고 대답해야 합니다.")
    }

    func testOnlyNumbers() {
        print("$")
        let input = "1, 2, 3."
        let expected = "Whatever."
        let result = Bob.hey(input)
        XCTAssertEqual(expected, result)
        print("title:대화 8")
        print("result:\(result)")
        print("exp:\(input) 을 말하면 \(expected) 라고 대답해야 합니다.")
    }

    func testQuestionWithOnlyNumbers() {
        print("$")
        let input = "4?"
        let expected = "Sure."
        let result = Bob.hey(input)
        XCTAssertEqual(expected, result)
        print("title:대화 9")
        print("result:\(result)")
        print("exp:\(input) 을 말하면 \(expected) 라고 대답해야 합니다.")
    }

    func testShoutingWithSpecialCharacters() {
        print("$")
        let input = "ZOMG THE %^*@#$(*^ ZOMBIES ARE COMING!!11!!1!"
        let expected = "Woah, chill out!"
        let result = Bob.hey(input)
        XCTAssertEqual(expected, result)
        print("title:대화 10")
        print("result:\(result)")
        print("exp:\(input) 을 말하면 \(expected) 라고 대답해야 합니다.")
    }

    func testShoutingWithUmlautsCharacters() {
        print("$")
        let input = "ÄMLÄTS!"
        let expected = "Woah, chill out!"
        let result = Bob.hey(input)
        XCTAssertEqual(expected, result)
        print("title:대화 11")
        print("result:\(result)")
        print("exp:\(input) 을 말하면 \(expected) 라고 대답해야 합니다.")
    }

    func testCalmlySpeakingAboutUmlauts() {
        print("$")
        let input = "ÄMLäTS!"
        let expected = "Whatever."
        let result = Bob.hey(input)
        XCTAssertEqual(expected, result)
        print("title:대화 12")
        print("result:\(result)")
        print("exp:\(input) 을 말하면 \(expected) 라고 대답해야 합니다.")
    }

    func testShoutingWithNoExclamationmark() {
        print("$")
        let input = "I HATE YOU"
        let expected = "Woah, chill out!"
        let result = Bob.hey(input)
        XCTAssertEqual(expected, result)
        print("title:대화 13")
        print("result:\(result)")
        print("exp:\(input) 을 말하면 \(expected) 라고 대답해야 합니다.")
    }

    func testStatementContainingQuestionsMark() {
        print("$")
        let input = "Ending with a ? means a question."
        let expected = "Whatever."
        let result = Bob.hey(input)
        XCTAssertEqual(expected, result)
        print("title:대화 14")
        print("result:\(result)")
        print("exp:\(input) 을 말하면 \(expected) 라고 대답해야 합니다.")
    }

    func testPrattlingOn() {
        print("$")
        let input = "Wait! Hang on.  Are you going to be OK?"
        let expected = "Sure."
        let result = Bob.hey(input)
        XCTAssertEqual(expected, result)
        print("title:대화 15")
        print("result:\(result)")
        print("exp:\(input) 을 말하면 \(expected) 라고 대답해야 합니다.")
    }

    func testSilence() {
        print("$")
        let input = ""
        let expected = "Fine, be that way."
        let result = Bob.hey(input)
        XCTAssertEqual(expected, result)
        print("title:대화 16")
        print("result:\(result)")
        print("exp:\(input) 을 말하면 \(expected) 라고 대답해야 합니다.")
    }

    func testProlongedSilence() {
        print("$")
        let input = "     "
        let expected = "Fine, be that way."
        let result = Bob.hey(input)
        XCTAssertEqual(expected, result)
        print("title:대화 17")
        print("result:\(result)")
        print("exp:\(input) 을 말하면 \(expected) 라고 대답해야 합니다.")
    }

    static var allTests: [(String, (BobTests) -> () throws -> Void)] {
        return [
            ("testStatingSomething", testStatingSomething),
            ("testShouting", testShouting),
            ("testAskingAQustion", testAskingAQustion),
            ("testTalkingForcefully", testTalkingForcefully),
            ("testUsingAcronyms", testUsingAcronyms),
            ("testForcefulQuestions", testForcefulQuestions),
            ("testShoutingNumbers", testShoutingNumbers),
            ("testOnlyNumbers", testOnlyNumbers),
            ("testQuestionWithOnlyNumbers", testQuestionWithOnlyNumbers),
            ("testShoutingWithSpecialCharacters", testShoutingWithSpecialCharacters),
            ("testShoutingWithUmlautsCharacters", testShoutingWithUmlautsCharacters),
            ("testCalmlySpeakingAboutUmlauts", testCalmlySpeakingAboutUmlauts),
            ("testShoutingWithNoExclamationmark", testShoutingWithNoExclamationmark),
            ("testStatementContainingQuestionsMark", testStatementContainingQuestionsMark),
            ("testPrattlingOn", testPrattlingOn),
            ("testSilence", testSilence),
            ("testProlongedSilence", testProlongedSilence),
        ]
    }
}
