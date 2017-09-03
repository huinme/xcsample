import XCTest

class sampleUITests: XCTestCase {

    var app: XCUIApplication!

    override func setUp() {
        app = XCUIApplication()
        app.launch()
    }

//    func testCaptureChapterListView() {
//        // Snapshot : Application's first view
//        let screenshot: XCUIScreenshot = app.screenshot()
//        let attachment = XCTAttachment(screenshot: screenshot)
//        attachment.lifetime = .keepAlways
//        attachment.name = "Chapter List"
//        add(attachment)
//    }

//    func testScreenshotAllChapters() {
//        // 起動直後の画面
//        let screenshot = XCUIScreen.main.screenshot()
//        let attachment = XCTAttachment(screenshot: screenshot)
//        attachment.lifetime = .keepAlways
//        add(attachment)
//
//        let cells = app.tables
//            .children(matching: .cell)
//            .matching(identifier: "chapter-item")
//
//        // 各章の詳細画面に遷移して、スクリーンショット保存、目次に戻るを繰り返す
//        for i in 0..<cells.count {
//            cells.element(boundBy: i).tap()
//            // "詳細"画面への遷移を待機する
//            XCTAssertTrue(app.navigationBars["詳細"].waitForExistence(timeout: 3))
//            let screenshot = app.screenshot()
//            let attachment = XCTAttachment(screenshot: screenshot)
//            attachment.lifetime = .keepAlways
//            add(attachment)
//            app.navigationBars.element.buttons["目次"].tap()
//        }
//    }

    // Before execute this test,
    // ensure to enable "Capture screenshots automatically"
    // and "Delete when each test succeeds" in editing scheme view.
//    func testScreenshotAllChapters() {
//        let cells = app.tables
//            .children(matching: .cell)
//            .matching(identifier: "chapter-item")
//
//        // 各章の詳細画面に遷移して、スクリーンショット保存、目次に戻るを繰り返す
//        for i in 0..<cells.count {
//            cells.element(boundBy: i).tap()
//            // "詳細"画面への遷移を待機する
//            XCTAssertTrue(app.navigationBars["詳細"].waitForExistence(timeout: 3))
//            app.navigationBars.element.buttons["目次"].tap()
//        }
//    }

    // Before execute this test,
    // ensure to enable "Capture screenshots automatically"
    // and "Delete when each test succeeds" in editing scheme view.
    func testScreenshotAllChapters() {

        let cells = app.tables
            .children(matching: .cell)
            .matching(identifier: "chapter-item")

        for i in 0..<cells.count {
            XCTContext.runActivity(named: "Capture Screenshot : Chapter \(i + 1)") { _ in
                cells.element(boundBy: i).tap()
                XCTAssertTrue(app.navigationBars["詳細"].waitForExistence(timeout: 3))
                app.navigationBars.element.buttons["目次"].tap()
            }
        }
    }
}
