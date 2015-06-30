//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

#import "___VARIABLE_superclass___.h"

/**
 *  @class ___FILEBASENAMEASIDENTIFIER___
 *
 *  @brief The ___FILEBASENAMEASIDENTIFIER___ class
 *
 *  @discussion friend model
 *
 *  @superclass SuperClass: ___VARIABLE_superclass___
 *
 *
 *  @var name
 *  \b name                 - name
 *  @var serverID
 *  \b serverID             - server ID
 */
@interface ___FILEBASENAMEASIDENTIFIER___ : ___VARIABLE_superclass___

/// model server id
@property NSInteger serverID; //__attribute__((unavailable("In ___FILEBASENAMEASIDENTIFIER___ model no row with title 'serverID'")));
/// model name row
@property NSString *name; //__attribute__((unavailable("In ___FILEBASENAMEASIDENTIFIER___ model no row with title 'name'")));

+ (___FILEBASENAMEASIDENTIFIER___ *)shared___VARIABLE_shared___;

/**
 *  Desabled deleteAll method for ___FILEBASENAMEASIDENTIFIER___
 */
+ (void)deleteAll __attribute__((unavailable("You can't delete the singleton from the database")));

@end

// This protocol enables typed collections. i.e.:
// RLMArray<___FILEBASENAMEASIDENTIFIER___>
RLM_ARRAY_TYPE(___FILEBASENAMEASIDENTIFIER___)
