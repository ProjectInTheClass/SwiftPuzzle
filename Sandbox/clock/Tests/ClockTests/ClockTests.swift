import XCTest
@testable import Clock

// Test for Protocols: CustomStringConvertible, Equatable

class ClockTests: XCTestCase {

    // MARK: - Create: Test creating a new clock with an initial time.

    func testOnTheHour() {
        print("$")
        XCTAssertEqual("08:00", Clock(hours: 8).description)
        print("title:시계 초기화하기")
        print("result:\(Clock(hours: 8).description)")
        print("exp:시계를 8시간으로 초기화합니다.")
    }

    func testPastTheHour() {
        print("$")
        XCTAssertEqual("11:09", Clock(hours: 11, minutes: 9).description)
        print("title:시계 초기화하기")
        print("result:\(Clock(hours: 11, minutes: 9).description)")
        print("exp:시계를 11시간 9분으로 초기화합니다.")
    }

    func testMidnightIsZeroHours() {
        print("$")
        XCTAssertEqual("00:00", Clock(hours: 24).description)
        print("title:시계 초기화하기")
        print("result:\(Clock(hours: 24).description)")
        print("exp:시계를 24시간으로 초기화합니다.")
    }

    func testHourRollsOver() {
        print("$")
        XCTAssertEqual("01:00", Clock(hours: 25).description)
        print("title:시계 초기화하기")
        print("result:\(Clock(hours: 25).description)")
        print("exp:시계를 25시간으로 초기화합니다.")
    }

    func testHourRollsOverContinuously() {
        print("$")
        XCTAssertEqual("04:00", Clock(hours: 100).description)
        print("title:시계 초기화하기")
        print("result:\(Clock(hours: 100).description)")
        print("exp:시계를 100시간으로 초기화합니다.")
    }

    func testSixtyMinutesIsNextHour() {
        print("$")
        XCTAssertEqual("02:00", Clock(hours: 1, minutes: 60).description)
        print("title:시계 초기화하기")
        print("result:\(Clock(hours: 1, minutes: 60).description)")
        print("exp:시계를 1시간 60분으로 초기화합니다.")
    }

    func testMinutesRollOver() {
        print("$")
        XCTAssertEqual("02:40", Clock(hours: 0, minutes: 160).description)
        print("title:시계 초기화하기")
        print("result:\(Clock(hours: 0, minutes: 160).description)")
        print("exp:시계를 160분으로 초기화합니다.")
    }

    func testMinutesRollOverContinuously() {
        print("$")
        XCTAssertEqual("04:43", Clock(hours: 0, minutes: 1723).description)
        print("title:시계 초기화하기")
        print("result:\(Clock(hours: 1, minutes: 60).description)")
        print("exp:시계를 1시간 60분으로 초기화합니다.")
    }

    func testHoursAndMinutesRollOver() {
        print("$")
        XCTAssertEqual("11:01", Clock(hours: 201, minutes: 3001).description)
        print("title:시계 초기화하기")
        print("result:\(Clock(hours: 201, minutes: 3001).description)")
        print("exp:시계를 201시간 3001분으로 초기화합니다.")
    }

    func testHoursAndMinutesRollOverToExactlyMidnight() {
        print("$")
        XCTAssertEqual("00:00", Clock(hours: 72, minutes: 8640).description)
        print("title:시계 초기화하기")
        print("result:\(Clock(hours: 72, minutes: 8640).description)")
        print("exp:시계를 72시간 8640분으로 초기화합니다.")
    }

    func testNegativeHour() {
        print("$")
        XCTAssertEqual("23:15", Clock(hours: -1, minutes: 15).description)
        print("title:시계 초기화하기")
        print("result:\(Clock(hours: -1, minutes: 15).description)")
        print("exp:시계를 -1시간 15분으로 초기화합니다.")
    }

    func testNegativeHourRollsOver() {
        print("$")
        XCTAssertEqual("23:00", Clock(hours: -25).description)
        print("title:시계 초기화하기")
        print("result:\(Clock(hours: -25).description)")
        print("exp:시계를 -25시간으로 초기화합니다.")
    }

    func testNegativeHourRollsOverContinuously() {
        print("$")
        XCTAssertEqual("05:00", Clock(hours: -91).description)
        print("title:시계 초기화하기")
        print("result:\(Clock(hours: -91).description)")
        print("exp:시계를 -91시간으로 초기화합니다.")
    }

    func testNegativeMinutes() {
        print("$")
        XCTAssertEqual("00:20", Clock(hours: 1, minutes: -40).description)
        print("title:시계 초기화하기")
        print("result:\(Clock(hours: 1, minutes: -40).description)")
        print("exp:시계를 1시간 -400분으로 초기화합니다.")
    }

    func testNegativeMinutesRollOver() {
        print("$")
        XCTAssertEqual("22:20", Clock(hours: 1, minutes: -160).description)
        print("title:시계 초기화하기")
        print("result:\(Clock(hours: 1, minutes: -160).description)")
        print("exp:시계를 1시간 -160분으로 초기화합니다.")
    }

    func testNegativeMinutesRollOverContinuously() {
        print("$")
        XCTAssertEqual("16:40", Clock(hours: 1, minutes: -4820).description)
        print("title:시계 초기화하기")
        print("result:\(Clock(hours: 1, minutes: -4820).description)")
        print("exp:시계를 1시간 -4820분으로 초기화합니다.")
    }

    func testNegativeHoursAndMinutesBothRollOverContinuously() {
        print("$")
        XCTAssertEqual("22:10", Clock(hours: -121, minutes: -5810).description)
        print("title:시계 초기화하기")
        print("result:\(Clock(hours: -121, minutes: -5810).description)")
        print("exp:시계를 -121시간 -5810분으로 초기화합니다.")
    }

    // MARK: - Add: Test adding and subtracting minutes.

    func testAddMinutes() {
        print("$")
        let clock = Clock(hours: 10).add(minutes: 3)
        XCTAssertEqual("10:03", clock.description)
        print("title:시계에 시간 더하기")
        print("result:\(clock.description)")
        print("exp:시계를 10시간으로 초기화합니다. 3분을 더합니다.")
    }

    func testAddNoMinutes() {
        print("$")
        let clock = Clock(hours: 6, minutes: 41).add(minutes: 0)
        XCTAssertEqual("06:41", clock.description)
        print("title:시계에 시간 더하기")
        print("result:\(clock.description)")
        print("exp:시계를 6시간 41분으로 초기화합니다. 0분을 더합니다.")
    }

    func testAddToNextHour() {
        print("$")
        let clock = Clock(hours: 0, minutes: 45).add(minutes: 40)
        XCTAssertEqual("01:25", clock.description)
        print("title:시계에 시간 더하기")
        print("result:\(clock.description)")
        print("exp:시계를 45분으로 초기화합니다. 40분을 더합니다.")
    }

    func testAddMoreThanOneHour() {
        print("$")
        let clock = Clock(hours: 10).add(minutes: 61)
        XCTAssertEqual("11:01", String(describing: clock))
        print("title:시계에 시간 더하기")
        print("result:\(clock.description)")
        print("exp:시계를 10시간으로 초기화합니다. 61분을 더합니다.")
    }

    func testAddMoreThanTwoHoursWithCarry() {
        print("$")
        let clock = Clock(hours: 0, minutes: 45).add(minutes: 160)
        XCTAssertEqual("03:25", clock.description)
        print("title:시계에 시간 더하기")
        print("result:\(clock.description)")
        print("exp:시계를 45분으로 초기화합니다. 160분을 더합니다.")
    }

    func testAddAcrossMidnight() {
        print("$")
        let clock = Clock(hours: 23, minutes: 59).add(minutes: 2)
        XCTAssertEqual("00:01", String(describing: clock))
        print("title:시계에 시간 더하기")
        print("result:\(clock.description)")
        print("exp:시계를 23시간 59분으로 초기화합니다. 2분을 더합니다.")
    }

    func testAddMoreThanOneDay() {
        print("$")
        // (1500 min = 25 hrs)
        let clock = Clock(hours: 5, minutes: 32).add(minutes: 1500)
        XCTAssertEqual("06:32", String(describing: clock))
        print("title:시계에 시간 더하기")
        print("result:\(clock.description)")
        print("exp:시계를 5시간 32분으로 초기화합니다. 1500분을 더합니다.")
    }

    func testAddMoreThanTwoDays() {
        print("$")
        let clock = Clock(hours: 1, minutes: 1).add(minutes: 3500)
        XCTAssertEqual("11:21", String(describing: clock))
        print("title:시계에 시간 더하기")
        print("result:\(clock.description)")
        print("exp:시계를 1시간 1분으로 초기화합니다. 3500분을 더합니다.")
    }

    func testSubtractMinutes() {
        print("$")
        let clock = Clock(hours: 10, minutes: 3).subtract(minutes: 3)
        XCTAssertEqual("10:00", String(describing: clock))
        print("title:시계에서 시간 빼기")
        print("result:\(clock.description)")
        print("exp:시계를 10시간 3분으로 초기화합니다. 3분을 뺍니다.")
    }

    func testSubtractToPreviousHour() {
        print("$")
        let clock = Clock(hours: 10, minutes: 3).subtract(minutes: 30)
        XCTAssertEqual("09:33", String(describing: clock))
        print("title:시계에서 시간 빼기")
        print("result:\(clock.description)")
        print("exp:시계를 10시간 3분으로 초기화합니다. 30분을 뺍니다.")
    }

    func testSubtractMoreThanAnHour() {
        print("$")
        let clock = Clock(hours: 10, minutes: 3).subtract(minutes: 70)
        XCTAssertEqual("08:53", String(describing: clock))
        print("title:시계에서 시간 빼기")
        print("result:\(clock.description)")
        print("exp:시계를 10시간 3분으로 초기화합니다. 70분을 뺍니다.")
    }

    func testSubtractAcrossMidnight() {
        print("$")
        let clock = Clock(hours: 0, minutes: 3).subtract(minutes: 4)
        XCTAssertEqual("23:59", String(describing: clock))
        print("title:시계에서 시간 빼기")
        print("result:\(clock.description)")
        print("exp:시계를 3분으로 초기화합니다. 4분을 뺍니다.")
    }

    func testSubtractMoreThanTwoHours() {
        print("$")
        let clock = Clock(hours: 0, minutes: 0).subtract(minutes: 160)
        XCTAssertEqual("21:20", String(describing: clock))
        print("title:시계에서 시간 빼기")
        print("result:\(clock.description)")
        print("exp:시계를 0시간 0분으로 초기화합니다. 160분을 뺍니다.")
    }

    func testSubtractMoreTHanTwoHoursWithBorrow() {
        print("$")
        let clock = Clock(hours: 6, minutes: 15).subtract(minutes: 160)
        XCTAssertEqual("03:35", String(describing: clock))
        print("title:시계에서 시간 빼기")
        print("result:\(clock.description)")
        print("exp:시계를 6시간 15분으로 초기화합니다. 160분을 뺍니다.")
    }

    func testSubtractMoreThanOneDay() {
        print("$")
        // (1500 min = 25 hrs)
        let clock = Clock(hours: 5, minutes: 32).subtract(minutes: 1500)
        XCTAssertEqual("04:32", String(describing: clock))
        print("title:시계에서 시간 빼기")
        print("result:\(clock.description)")
        print("exp:시계를 5시간 32분으로 초기화합니다. 1500분을 뺍니다.")
    }

    func testSubtractMoreThanTwoDays() {
        print("$")
        let clock = Clock(hours: 2, minutes: 20).subtract(minutes: 3000)
        XCTAssertEqual("00:20", String(describing: clock))
        print("title:시계에서 시간 빼기")
        print("result:\(clock.description)")
        print("exp:시계를 2시간 20분으로 초기화합니다. 3000분을 뺍니다.")
    }

    // MARK: - Equal: Construct two separate clocks, set times, test if they are equal.

    func testClocksWithSameTime() {
        print("$")
        let clock1 = Clock(hours: 15, minutes: 37)
        let clock2 = Clock(hours: 15, minutes: 37)
        XCTAssertEqual(clock1, clock2)
        print("title:두 시계의 시간이 같은지 판단하기")
        print("result:clock1: \(clock1.description), clock2: \(clock2.description)")
        print("exp:두 시계의 시간이 같아야 합니다.")
    }

    func testClocksAMinuteApart() {
        print("$")
        let clock1 = Clock(hours: 15, minutes: 36)
        let clock2 = Clock(hours: 15, minutes: 37)
        XCTAssertNotEqual(clock1, clock2)
        print("title:두 시계의 시간이 같은지 판단하기")
        print("result:clock1: \(clock1.description), clock2: \(clock2.description)")
        print("exp:두 시계의 시간이 달라야 합니다.")
    }

    func testClocksAnHourApart() {
        print("$")
        let clock1 = Clock(hours: 14, minutes: 37)
        let clock2 = Clock(hours: 15, minutes: 37)
        XCTAssertNotEqual(clock1, clock2)
        print("title:두 시계의 시간이 같은지 판단하기")
        print("result:clock1: \(clock1.description), clock2: \(clock2.description)")
        print("exp:두 시계의 시간이 달라야 합니다.")
    }

    func testClocksWithHourOverflow() {
        print("$")
        let clock1 = Clock(hours: 10, minutes: 37)
        let clock2 = Clock(hours: 34, minutes: 37)
        XCTAssertEqual(clock1, clock2)
        print("title:두 시계의 시간이 같은지 판단하기")
        print("result:clock1: \(clock1.description), clock2: \(clock2.description)")
        print("exp:두 시계의 시간이 같아야 합니다.")
    }

    func testClocksWithHourOverflowBySeveralDays() {
        print("$")
        let clock1 = Clock(hours: 3, minutes: 11)
        let clock2 = Clock(hours: 99, minutes: 11)
        XCTAssertEqual(clock1, clock2)
        print("title:두 시계의 시간이 같은지 판단하기")
        print("result:clock1: \(clock1.description), clock2: \(clock2.description)")
        print("exp:두 시계의 시간이 같아야 합니다.")
    }

    func testClocksWithNegativeHour() {
        print("$")
        let clock1 = Clock(hours: 22, minutes: 40)
        let clock2 = Clock(hours: -2, minutes: 40)
        XCTAssertEqual(clock1, clock2)
        print("title:두 시계의 시간이 같은지 판단하기")
        print("result:clock1: \(clock1.description), clock2: \(clock2.description)")
        print("exp:두 시계의 시간이 같아야 합니다.")
    }

    func testClocksWithNegativeHourThatWraps() {
        print("$")
        let clock1 = Clock(hours: 17, minutes: 3)
        let clock2 = Clock(hours: -31, minutes: 3)
        XCTAssertEqual(clock1, clock2)
        print("title:두 시계의 시간이 같은지 판단하기")
        print("result:clock1: \(clock1.description), clock2: \(clock2.description)")
        print("exp:두 시계의 시간이 같아야 합니다.")
    }

    func testClocksWithNegativeHourThatWrapsMultipleTimes() {
        print("$")
        let clock1 = Clock(hours: 13, minutes: 49)
        let clock2 = Clock(hours: -83, minutes: 49)
        XCTAssertEqual(clock1, clock2)
        print("title:두 시계의 시간이 같은지 판단하기")
        print("result:clock1: \(clock1.description), clock2: \(clock2.description)")
        print("exp:두 시계의 시간이 같아야 합니다.")
    }

    func testClocksWithMinuteOverflow() {
        print("$")
        let clock1 = Clock(hours: 0, minutes: 1)
        let clock2 = Clock(hours: 0, minutes: 1441)
        XCTAssertEqual(clock1, clock2)
        print("title:두 시계의 시간이 같은지 판단하기")
        print("result:clock1: \(clock1.description), clock2: \(clock2.description)")
        print("exp:두 시계의 시간이 같아야 합니다.")
    }

    func testClocksWithMinuteOverflowBySeveralDays() {
        print("$")
        let clock1 = Clock(hours: 2, minutes: 2)
        let clock2 = Clock(hours: 2, minutes: 4322)
        XCTAssertEqual(clock1, clock2)
        print("title:두 시계의 시간이 같은지 판단하기")
        print("result:clock1: \(clock1.description), clock2: \(clock2.description)")
        print("exp:두 시계의 시간이 같아야 합니다.")
    }

    func testClocksWithNegativeMinute() {
        print("$")
        let clock1 = Clock(hours: 2, minutes: 40)
        let clock2 = Clock(hours: 3, minutes: -20)
        XCTAssertEqual(clock1, clock2)
        print("title:두 시계의 시간이 같은지 판단하기")
        print("result:clock1: \(clock1.description), clock2: \(clock2.description)")
        print("exp:두 시계의 시간이 같아야 합니다.")
    }

    func testClocksWithNegativeMinuteThatWraps() {
        print("$")
        let clock1 = Clock(hours: 4, minutes: 10)
        let clock2 = Clock(hours: 5, minutes: -1490)
        XCTAssertEqual(clock1, clock2)
        print("title:두 시계의 시간이 같은지 판단하기")
        print("result:clock1: \(clock1.description), clock2: \(clock2.description)")
        print("exp:두 시계의 시간이 같아야 합니다.")
    }

    func testClocksWithNegativeMinuteThatWrapsMultipleTimes() {
        print("$")
        let clock1 = Clock(hours: 6, minutes: 15)
        let clock2 = Clock(hours: 6, minutes: -4305)
        XCTAssertEqual(clock1, clock2)
        print("title:두 시계의 시간이 같은지 판단하기")
        print("result:clock1: \(clock1.description), clock2: \(clock2.description)")
        print("exp:두 시계의 시간이 같아야 합니다.")
    }

    func testClocksWithNegativeHoursAndMinutes() {
        print("$")
        let clock1 = Clock(hours: 7, minutes: 32)
        let clock2 = Clock(hours: -12, minutes: -268)
        XCTAssertEqual(clock1, clock2)
        print("title:두 시계의 시간이 같은지 판단하기")
        print("result:clock1: \(clock1.description), clock2: \(clock2.description)")
        print("exp:두 시계의 시간이 같아야 합니다.")
    }

    func testClocksWithNegativeHoursAndMinutesThatWrap() {
        print("$")
        let clock1 = Clock(hours: 18, minutes: 7)
        let clock2 = Clock(hours: -54, minutes: -11513)
        XCTAssertEqual(clock1, clock2)
        print("title:두 시계의 시간이 같은지 판단하기")
        print("result:clock1: \(clock1.description), clock2: \(clock2.description)")
        print("exp:두 시계의 시간이 같아야 합니다.")
    }

    static var allTests: [(String, (ClockTests) -> () throws -> Void)] {
        return [
            ("testOnTheHour", testOnTheHour),
            ("testPastTheHour", testPastTheHour),
            ("testMidnightIsZeroHours", testMidnightIsZeroHours),
            ("testHourRollsOver", testHourRollsOver),
            ("testHourRollsOverContinuously", testHourRollsOverContinuously),
            ("testSixtyMinutesIsNextHour", testSixtyMinutesIsNextHour),
            ("testMinutesRollOver", testMinutesRollOver),
            ("testMinutesRollOverContinuously", testMinutesRollOverContinuously),
            ("testHoursAndMinutesRollOver", testHoursAndMinutesRollOver),
            ("testHoursAndMinutesRollOverToExactlyMidnight", testHoursAndMinutesRollOverToExactlyMidnight),
            ("testNegativeHour", testNegativeHour),
            ("testNegativeHourRollsOver", testNegativeHourRollsOver),
            ("testNegativeHourRollsOverContinuously", testNegativeHourRollsOverContinuously),
            ("testNegativeMinutes", testNegativeMinutes),
            ("testNegativeMinutesRollOver", testNegativeMinutesRollOver),
            ("testNegativeMinutesRollOverContinuously", testNegativeMinutesRollOverContinuously),
            ("testNegativeHoursAndMinutesBothRollOverContinuously", testNegativeHoursAndMinutesBothRollOverContinuously),
            ("testAddMinutes", testAddMinutes),
            ("testAddNoMinutes", testAddNoMinutes),
            ("testAddToNextHour", testAddToNextHour),
            ("testAddMoreThanOneHour", testAddMoreThanOneHour),
            ("testAddMoreThanTwoHoursWithCarry", testAddMoreThanTwoHoursWithCarry),
            ("testAddAcrossMidnight", testAddAcrossMidnight),
            ("testAddMoreThanOneDay", testAddMoreThanOneDay),
            ("testAddMoreThanTwoDays", testAddMoreThanTwoDays),
            ("testSubtractMinutes", testSubtractMinutes),
            ("testSubtractToPreviousHour", testSubtractToPreviousHour),
            ("testSubtractMoreThanAnHour", testSubtractMoreThanAnHour),
            ("testSubtractAcrossMidnight", testSubtractAcrossMidnight),
            ("testSubtractMoreThanTwoHours", testSubtractMoreThanTwoHours),
            ("testSubtractMoreTHanTwoHoursWithBorrow", testSubtractMoreTHanTwoHoursWithBorrow),
            ("testSubtractMoreThanOneDay", testSubtractMoreThanOneDay),
            ("testSubtractMoreThanTwoDays", testSubtractMoreThanTwoDays),
            ("testClocksWithSameTime", testClocksWithSameTime),
            ("testClocksAMinuteApart", testClocksAMinuteApart),
            ("testClocksAnHourApart", testClocksAnHourApart),
            ("testClocksWithHourOverflow", testClocksWithHourOverflow),
            ("testClocksWithHourOverflowBySeveralDays", testClocksWithHourOverflowBySeveralDays),
            ("testClocksWithNegativeHour", testClocksWithNegativeHour),
            ("testClocksWithNegativeHourThatWraps", testClocksWithNegativeHourThatWraps),
            ("testClocksWithNegativeHourThatWrapsMultipleTimes", testClocksWithNegativeHourThatWrapsMultipleTimes),
            ("testClocksWithMinuteOverflow", testClocksWithMinuteOverflow),
            ("testClocksWithMinuteOverflowBySeveralDays", testClocksWithMinuteOverflowBySeveralDays),
            ("testClocksWithNegativeMinute", testClocksWithNegativeMinute),
            ("testClocksWithNegativeMinuteThatWraps", testClocksWithNegativeMinuteThatWraps),
            ("testClocksWithNegativeMinuteThatWrapsMultipleTimes", testClocksWithNegativeMinuteThatWrapsMultipleTimes),
            ("testClocksWithNegativeHoursAndMinutes", testClocksWithNegativeHoursAndMinutes),
            ("testClocksWithNegativeHoursAndMinutesThatWrap", testClocksWithNegativeHoursAndMinutesThatWrap),
        ]
    }
}
