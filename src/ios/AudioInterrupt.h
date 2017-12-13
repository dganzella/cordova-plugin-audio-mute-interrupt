#import <Foundation/Foundation.h>
#import <Cordova/CDVPlugin.h>
#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface AudioInterruptPlugin : CDVPlugin

- (void)addEvents:(CDVInvokedUrlCommand*)command;

@end
