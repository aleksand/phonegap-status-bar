
#import "CDVCameracheck.h"
#import <AssetsLibrary/AssetsLibrary.h>
#import <AVFoundation/AVFoundation.h>

@implementation CDVStatusBar

- (void)getStatusBar:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;

    self.callbackID = command.callbackId;

    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];

    NSLog(@"check photos access: %ld", authStatus);

    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)setListener:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;

    self.callbackID = command.callbackId;

    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:@"No camera access"];

    NSLog(@"check camera result %ld", authStatus);

    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}
@end
