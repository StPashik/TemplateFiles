//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

#import "___FILEBASENAME___.h"

@implementation ___FILEBASENAMEASIDENTIFIER___

@synthesize serverID;
@synthesize name;

// Specify default values for properties

//+ (NSDictionary *)defaultPropertyValues
//{
//    return @{};
//}

// Specify properties to ignore (Realm won't persist these)

//+ (NSArray *)ignoredProperties
//{
//    return @[];
//}

// Specify primary key for properties

+ (NSString *)primaryKey
{
    return @"serverID";
}

#pragma mark - override

- (instancetype)initWithInfo:(NSDictionary *)info
{
    self = [super initWithInfo:info];
    
    NSInteger localServerID = [[info objectForKey:@"id"]  integerValue];
    NSString *localName     = [info objectForKey:@"name"] ? [info objectForKey:@"name"] : @"";

    self.serverID = localServerID ? localServerID : 0;
    self.name     = localName ? localName : @"";

    return self;
}

#pragma mark - Public methods

@end
