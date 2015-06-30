//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

#import <Realm/Realm.h>

/**
 *  @class ___FILEBASENAMEASIDENTIFIER___
 *
 *  @brief The ___FILEBASENAMEASIDENTIFIER___ class
 *
 *  @discussion Base class for all models
 *
 *  @superclass SuperClass: RLMObject
 */
@interface ___FILEBASENAMEASIDENTIFIER___ : RLMObject

/// model server id
@property NSInteger serverID;
/// model name row
@property NSString *name;

/**
 *  Init method for all subclasses of models
 *
 *  @param info - info dictionary with data of model
 *
 *  @return instance of class
 */
- (instancetype)initWithInfo:(NSDictionary *)info;

/**
 *  Save method for all subclass
 */
- (void)save;

/**
 *  Delete all objects
 */
+ (void)deleteAll;

@end

// This protocol enables typed collections. i.e.:
// RLMArray<___FILEBASENAMEASIDENTIFIER___>
RLM_ARRAY_TYPE(___FILEBASENAMEASIDENTIFIER___)
