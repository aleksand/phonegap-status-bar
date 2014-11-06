
#import "CDVStatusBarSize.h"
#import <AssetsLibrary/AssetsLibrary.h>
#import <AVFoundation/AVFoundation.h>

@implementation CDVStatusBarSize

- (void)pluginInitialize {
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(statusBarFrameWillChange:) name:UIApplicationWillChangeStatusBarFrameNotification object:nil];
}

- (void)getCurrentSize:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;
    
    NSArray *keys = [NSArray arrayWithObjects:@"width", @"height", nil];
    NSArray *objects = [NSArray arrayWithObjects:
                        [NSString stringWithFormat:@"%f", [UIApplication sharedApplication].statusBarFrame.size.width],
                        [NSString stringWithFormat:@"%f", [UIApplication sharedApplication].statusBarFrame.size.height], nil];
    
    NSDictionary *dictionary = [NSDictionary dictionaryWithObjects:objects forKeys:keys];
    
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsDictionary:dictionary];
    
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)statusBarFrameWillChange:(NSNotification*)notification {
    NSValue* rectValue = [[notification userInfo] valueForKey:UIApplicationStatusBarFrameUserInfoKey];
    CGRect newFrame;
    [rectValue getValue:&newFrame];
    NSLog(@"StatusBarSizeFrameWillChange: newSize %f, %f", newFrame.size.width, newFrame.size.height);
    
    if(self.callbackID) {
        CDVPluginResult* pluginResult = nil;
        
        NSArray *keys = [NSArray arrayWithObjects:@"width", @"height", nil];
        NSArray *objects = [NSArray arrayWithObjects: [NSString stringWithFormat:@"%f", newFrame.size.width], [NSString stringWithFormat:@"%f", newFrame.size.height], nil];
        NSDictionary *dictionary = [NSDictionary dictionaryWithObjects:objects forKeys:keys];
  
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsDictionary:dictionary];
        [pluginResult setKeepCallback:[NSNumber numberWithBool:YES]];
  
        [self.commandDelegate sendPluginResult:pluginResult callbackId:self.callbackID];
    }
}

- (void)setListener:(CDVInvokedUrlCommand*)command
{
    self.callbackID = command.callbackId;
}
@end
