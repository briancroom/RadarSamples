import XCTest

class XCTestFailureWhileWaitingBug: XCTestCase {
    func testFailureWhileWaiting() {
        expectationWithDescription("foo")
        dispatch_async(dispatch_get_main_queue()) {
            XCTFail()
        }

        waitForExpectationsWithTimeout(5) { err in
            // Expected behavor: receive an error code of 1 (for XCTestErrorCode.FailureWhileWaiting) immediately
            // Actual behavior: receive an error code of 0 (for XCTestErrorCode.TimeoutWhileWaiting) after 5 seconds
            print("*** Error code: \(err!.code)")
        }
    }
}
