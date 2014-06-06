//
// Created by azu on 2014/06/06.
//


#import "ErrorGen.h"


@implementation ErrorGen {

}
+ (NSError *)errorWithDescription:(NSString *) description {
    NSString *bundleIdentifier = [[NSBundle mainBundle] bundleIdentifier];
    NSError *error = [NSError errorWithDomain:bundleIdentifier code:0 userInfo:@{
        NSLocalizedDescriptionKey : description
    }];
    return error;
}

@end