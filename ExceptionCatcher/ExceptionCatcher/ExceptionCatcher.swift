import Foundation

public func throwAnException() {
    NSException(name: NSGenericException, reason: "Boom", userInfo: nil).raise()
}

public func throwAndCatchAnException() {
    performBlockCatchingExceptions { 
        throwAnException()
    }
}
