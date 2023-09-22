import XCTest
@testable import TestLib

final class TestLibTests: XCTestCase {
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(TestLib().text, "Hello, World!")
    }
}
