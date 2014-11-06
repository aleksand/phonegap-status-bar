
#import "CDVStatusBarControl.h"
#import <AssetsLibrary/AssetsLibrary.h>
#import <AVFoundation/AVFoundation.h>

@implementation CDVStatusBarControl

- (void)getStatusBarControl:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;

    self.callbackID = command.callbackId;

    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];

    NSLog(@"check photos access:");

    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];

    /*- (void)viewDidLoad
    {
        [super viewDidLoad];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(StatusBarControlFrameWillChange:) name:UIApplicationWillChangeStatusBarControlFrameNotification object:nil];
        // Do any additional setup after loading the view from its nib.
    }

    - (void)StatusBarControlFrameWillChange:(NSNotification*)notification {
        NSValue* rectValue = [[notification userInfo] valueForKey:UIApplicationStatusBarControlFrameUserInfoKey];
        CGRect newFrame;
        [rectValue getValue:&newFrame];
        NSLog(@"StatusBarControlFrameWillChange: newSize %f, %f", newFrame.size.width, newFrame.size.height);
        // Move your view here ...
    }*/
}

- (void)setListener:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;

    self.callbackID = command.callbackId;

    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:@"No camera access"];

    NSLog(@"check camera result");

    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}
@end
