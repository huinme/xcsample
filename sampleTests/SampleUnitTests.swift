import XCTest
@testable import sample

class SampleUnitTests: XCTestCase {

    let chapters = DataStore.fetchChapters()

    func testNumberOfChapters() {
        XCTAssert(chapters.count == 14, "Number of chapters was not expected value.")
    }
}
