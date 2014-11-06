#import <Cordova/CDV.h>

@interface CDVStatusBar : CDVPlugin  {
  // Member variables go here.
}

@property(strong) NSString* callbackID;

- (void)getStatusBar:(CDVInvokedUrlCommand*)command;
- (void)setListener:(CDVInvokedUrlCommand*)command;

@end