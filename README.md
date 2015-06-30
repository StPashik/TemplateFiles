# TemplateFiles for Realm models
Realm model helper for quickly create models with base functional. After create may change for current task. In "BaseModel" may delete or add propertys for current solution. In "CurrentModel" may add new propertys.

###Base model
####Parametrs
- `Class` class name

####Propertys
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

####Propertys
* `serverID` *may uncommented attribute for set unavailable*
* `name` *may uncommented attribute for set unavailable*

####Methods - Singletone
* `- (SingletoneModel *)sharedSingletonModel` Shared instance singletone
* `+ (void)deleteAll` unavailable for singletone model
