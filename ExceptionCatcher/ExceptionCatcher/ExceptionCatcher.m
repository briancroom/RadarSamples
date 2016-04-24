#import <Foundation/Foundation.h>
#import "ExceptionCatcher.h"

void performBlockCatchingExceptions(void (^block)(void)) {
    @try {
        block();
    } @catch(NSObject *o) {
        NSLog(@"** Caught something! %@", o);
    }
}
