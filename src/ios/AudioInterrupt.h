#import <Foundation/Foundation.h>
#import <Cordova/CDVPlugin.h>
#import <UIKit/UIKit.h>

@interface AudioInterruptPlugin : CDVPlugin

- (void)addEvents:(CDVInvokedUrlCommand*)command;

@end
