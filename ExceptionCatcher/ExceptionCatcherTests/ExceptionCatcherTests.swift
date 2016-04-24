import XCTest
import ExceptionCatcher

// These unit tests pass, working as expected

class ExceptionCatcherTests: XCTestCase {
    func testCatchesExceptions() {
        performBlockCatchingExceptions {
            throwAnException()
        }
    }

    func testThrowsAndCatches() {
        throwAndCatchAnException()
    }
}
