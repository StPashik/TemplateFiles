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
//    return @[@"name", @"serverID"];
//}

// Specify primary key for properties

+ (NSString *)primaryKey
{
    return @"serverID";
}

#pragma mark - Singleton

+ (___FILEBASENAMEASIDENTIFIER___ *)shared___VARIABLE_shared___
{
    static ___FILEBASENAMEASIDENTIFIER___ * _sharedManager = nil;
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^
                  {
                      _sharedManager = [[___FILEBASENAMEASIDENTIFIER___ alloc] initWithDefaultValues];
                  });
    
    return _sharedManager;
}

#pragma mark - Init method

- (instancetype)initWithDefaultValues
{
    self = [super init];
    
    RLMResults *___VARIABLE_shared___ = [___FILEBASENAMEASIDENTIFIER___ allObjects];
    
    if (___VARIABLE_shared___ == 0) {
        [self setDefaultValues];
    } else {
        return ___VARIABLE_shared___[0];
    }
    
    return self;
}

#pragma mark - override

- (instancetype)initWithInfo:(NSDictionary *)info
{
    self = [super initWithInfo:info];
    
    NSInteger localServerID = [[info objectForKey:@"id"]  integerValue];
    NSString *localName     = [info objectForKey:@"name"] ? [info objectForKey:@"name"] : @"";

    self.serverID = localServerID ? localServerID : 0;
    self.name     = localName  ? localName  : @"";

    return self;
}

#pragma mark - Public methods

#pragma mark - Private methods
#pragma mark - Private methods - local methods

- (void)setDefaultValues
{
    [[RLMRealm defaultRealm] transactionWithBlock:^{
        self.serverID = 0;
        self.name     = @"";
    }];
    
    [self save];
}

@end
