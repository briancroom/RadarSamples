import Foundation
import ExceptionCatcher

throwAndCatchAnException() // This works - exception is thrown and caught within the framework code

performBlockCatchingExceptions {
    print("About to raise")
    throwAnException()
}
print("Success!") // Execution never reaches here because the exception wasn't caught
