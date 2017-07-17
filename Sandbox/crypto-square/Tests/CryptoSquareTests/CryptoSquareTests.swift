import XCTest
@testable import CryptoSquare

class CryptoSquareTests: XCTestCase {

    func testNormalizeStrangeCharacters() {
        print("$")
        let crypto = Crypto("s#$%^&plunk")
        XCTAssertEqual("splunk", crypto.normalizePlaintext)
        print("title:문자열의 정규화")
        print("result:\(crypto.normalizePlaintext)")
        print("exp:s#$%^&plunk 가 정규화되면 splunk 가 되어야 합니다.")
    }

    func testNormalizeUppercaseCharacters() {
        print("$")
        let crypto = Crypto("WHOA HEY!")
        XCTAssertEqual("whoahey", crypto.normalizePlaintext)
        print("title:문자열의 정규화")
        print("result:\(crypto.normalizePlaintext)")
        print("exp:WHOA HEY! 가 정규화되면 whoahey 가 되어야 합니다.")
    }

    func testNormalizeWithNumbers() {
        print("$")
        let crypto = Crypto("1, 2, 3 GO!")
        XCTAssertEqual("123go", crypto.normalizePlaintext)
        print("title:문자열의 정규화")
        print("result:\(crypto.normalizePlaintext)")
        print("exp:1, 2, 3 GO! 가 정규화되면 123go 가 되어야 합니다.")
    }

    func testSizeOfSmallSquare() {
        print("$")
        let crypto = Crypto("1234")
        XCTAssertEqual(2, crypto.size)
        print("title:암호화 사각형의 크기")
        print("result:\(crypto.size)")
        print("exp:1234 를 암호화를 위해 사격형으로 만들면 2의 크기를 가집니다.")
    }

    func testSizeOfSlightlyLargerSquare() {
        print("$")
        let crypto = Crypto("123456789")
        XCTAssertEqual(3, crypto.size)
        print("title:암호화 사각형의 크기")
        print("result:\(crypto.size)")
        print("exp:123456789 를 암호화를 위해 사격형으로 만들면 3의 크기를 가집니다.")
    }

    func testSizeOfNonPerfectSquare() {
        print("$")
        let crypto = Crypto("123456789abc")
        XCTAssertEqual(4, crypto.size)
        print("title:암호화 사각형의 크기")
        print("result:\(crypto.size)")
        print("exp:123456789abc 를 암호화를 위해 사격형으로 만들면 4의 크기를 가집니다.")
    }

    func testSizeIsDeterminedByNormalizedPlaintext() {
        print("$")
        let crypto = Crypto("Oh hey, this is nuts!")
        XCTAssertEqual(4, crypto.size)
        print("title:암호화 사각형의 크기")
        print("result:\(crypto.size)")
        print("exp:Oh hey, this is nuts! 를 암호화를 위해 사격형으로 만들면 4의 크기를 가집니다.")
    }

    func testPlaintextSegments() {
        print("$")
        let crypto = Crypto("Never vex thine heart with idle woes")
        let expected = ["neverv", "exthin", "eheart", "withid", "lewoes"]
        XCTAssertEqual(expected, crypto.plaintextSegments)
        print("title:사각형으로 만들어 쪼개진 단어들")
        print("result:\(crypto.plaintextSegments)")
        print("exp:Never vex thine heart with idle woes 는 \(["neverv", "exthin", "eheart", "withid", "lewoes"]) 로 나누어져야 합니다.")
    }

    func testOtherPlaintextSegments() {
        print("$")
        let crypto = Crypto("ZOMG! ZOMBIES!!!")
        XCTAssertEqual(["zomg", "zomb", "ies"], crypto.plaintextSegments)
        print("title:사각형으로 만들어 쪼개진 단어들")
        print("result:\(crypto.plaintextSegments)")
        print("exp:ZOMG! ZOMBIES!!! 는 \(["zomg", "zomb", "ies"]) 로 나누어져야 합니다.")
    }

    func testCiphertext() {
        print("$")
        let crypto = Crypto("Time is an illusion. Lunchtime doubly so.")
        XCTAssertEqual("tasneyinicdsmiohooelntuillibsuuml", crypto.ciphertext)
        print("title:암호화하기")
        print("result:\(crypto.ciphertext)")
        print("exp:Time is an illusion. Lunchtime doubly so. 는 tasneyinicdsmiohooelntuillibsuuml 로 암호화되어야 합니다.")
    }

    func testAnotherCiphertext() {
        print("$")
        let crypto = Crypto("We all know interspecies romance is weird.")
        XCTAssertEqual("wneiaweoreneawssciliprerlneoidktcms", crypto.ciphertext)
        print("title:암호화하기")
        print("result:\(crypto.ciphertext)")
        print("exp:We all know interspecies romance is weird. 는 wneiaweoreneawssciliprerlneoidktcms 로 암호화되어야 합니다.")
    }

    func testNormalizedCiphertext() {
        print("$")
        let crypto = Crypto("Vampires are people too!")
        XCTAssertEqual("vrel aepe mset paoo irpo", crypto.normalizeCiphertext)
        print("title:복호화하기")
        print("result:\(crypto.normalizeCiphertext)")
        print("exp:Vampires are people too! 는 vrel aepe mset paoo irpo 로 변환되어야 합니다.")
    }

    func testNormalizedCiphertextSpillsIntoShortSegment() {
        print("$")
        let crypto = Crypto("Madness, and then illumination.")
        XCTAssertEqual("msemo aanin dninn dlaet ltshu i", crypto.normalizeCiphertext)
        print("title:복호화하기")
        print("result:\(crypto.normalizeCiphertext)")
        print("exp:Madness, and then illumination. 는 msemo aanin dninn dlaet ltshu i 로 변환되어야 합니다.")
    }

    func testAnotherNormalizedCiphertext() {
        print("$")
        let crypto = Crypto(
            "If man was meant to stay on the ground god would have given us roots"
        )
        let  expected = "imtgdvs fearwer mayoogo anouuio ntnnlvt wttddes aohghns seoau"
        XCTAssertEqual(expected, crypto.normalizeCiphertext)
        print("title:복호화하기")
        print("result:\(crypto.normalizeCiphertext)")
        print("exp:If man was meant to stay on the ground god would have given us roots 는 imtgdvs fearwer mayoogo anouuio ntnnlvt wttddes aohghns seoau 로 변환되어야 합니다.")

    }

    func testNormalizedCiphertextWithPunctuation() {
        print("$")
        let crypto = Crypto("Have a nice day. Feed the dog & chill out!")
        let expected = "hifei acedl veeol eddgo aatcu nyhht"
        XCTAssertEqual(expected, crypto.normalizeCiphertext)
        print("title:복호화하기")
        print("result:\(crypto.normalizeCiphertext)")
        print("exp:Have a nice day. Feed the dog & chill out! 는 hifei acedl veeol eddgo aatcu nyhht 로 변환되어야 합니다.")
    }

    static var allTests: [(String, (CryptoSquareTests) -> () throws -> Void)] {
        return [
            ("testNormalizeStrangeCharacters", testNormalizeStrangeCharacters),
            ("testNormalizeUppercaseCharacters", testNormalizeUppercaseCharacters),
            ("testNormalizeWithNumbers", testNormalizeWithNumbers),
            ("testSizeOfSmallSquare", testSizeOfSmallSquare),
            ("testSizeOfSlightlyLargerSquare", testSizeOfSlightlyLargerSquare),
            ("testSizeOfNonPerfectSquare", testSizeOfNonPerfectSquare),
            ("testSizeIsDeterminedByNormalizedPlaintext", testSizeIsDeterminedByNormalizedPlaintext),
            ("testPlaintextSegments", testPlaintextSegments),
            ("testOtherPlaintextSegments", testOtherPlaintextSegments),
            ("testCiphertext", testCiphertext),
            ("testAnotherCiphertext", testAnotherCiphertext),
            ("testNormalizedCiphertext", testNormalizedCiphertext),
            ("testNormalizedCiphertextSpillsIntoShortSegment", testNormalizedCiphertextSpillsIntoShortSegment),
            ("testAnotherNormalizedCiphertext", testAnotherNormalizedCiphertext),
            ("testNormalizedCiphertextWithPunctuation", testNormalizedCiphertextWithPunctuation),
        ]
    }
}
