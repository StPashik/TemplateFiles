# TemplateFiles for Realm models
Realm model helper for quickly create models with base functional. After create may change for current task. In "BaseModel" may delete or add properties for current solution. In "CurrentModel" may add new properties.

###Install

**iOS Templates**

In XCode, templates files are contains in XCode.app, but not recomended create new templates in-app, this may crush XCode 
`/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/Library/Xcode/Templates/File Templates`

This directory isn’t automatically created so will need to create the following directory if it doesn’t already exist
`~/Library/Developer/Xcode/Templates/File Templates/`

--

###Base model
####Parametrs
- `Class` class name

####Properties
* `serverID`
* `name`

####Methods:
* `- (instancetype)initWithInfo:(NSDictionary *)info` init method for all subclasses of models
* `- (void)save;` save method for all subclass
* `+ (void)deleteAll` delete all objects

--

###Current model
####Parametrs
- `Class` class name
- `SuperClass` base class name (need 'Base model')
- `Shared name` name for shared instance
- `Type of model` type of current mode `Main`,`Singleton`

####Properties
* `serverID` *may uncommented attribute for set unavailable*
* `name` *may uncommented attribute for set unavailable*

####Methods - Singletone
* `- (SingletoneModel *)sharedSingletonModel` Shared instance singletone
* `+ (void)deleteAll` unavailable for singletone model

--

###Icon
Template icon source file. For change title need edit text in sketch.app
