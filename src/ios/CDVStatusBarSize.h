#import <Cordova/CDV.h>

@interface CDVStatusBarSize : CDVPlugin  {
  // Member variables go here.
}

@property(strong) NSString* callbackID;

- (void)getCurrentSize:(CDVInvokedUrlCommand*)command;
- (void)setListener:(CDVInvokedUrlCommand*)command;

@end