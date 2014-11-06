#import <Cordova/CDV.h>

@interface CDVStatusBarControl : CDVPlugin  {
  // Member variables go here.
}

@property(strong) NSString* callbackID;

- (void)getStatusBarControl:(CDVInvokedUrlCommand*)command;
- (void)setListener:(CDVInvokedUrlCommand*)command;

@end