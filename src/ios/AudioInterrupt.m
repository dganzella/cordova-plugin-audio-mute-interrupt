#import "AudioInterruptPlugin.h"

@implementation AudioInterruptPlugin{
	    //NSString * callbackId;
}

#pragma mark -
#pragma mark Cordova Methods
-(void) pluginInitialize
{
	NSError *setCategoryError = nil;

	[avSession setCategory:AVAudioSessionCategoryPlayback
         withOptions:AVAudioSessionCategoryOptionMixWithOthers | AVAudioSessionCategoryOptionDefaultToSpeaker
         error:&setCategoryError]
	
	[avSession setCategory:AVAudioSessionCategoryPlayAndRecord
         withOptions:AVAudioSessionCategoryOptionMixWithOthers | AVAudioSessionCategoryOptionDefaultToSpeaker
         error:&setCategoryError]
		 
	[avSession setCategory:AVAudioSessionCategorySoloAmbient
         withOptions:AVAudioSessionCategoryOptionMixWithOthers | AVAudioSessionCategoryOptionDefaultToSpeaker
         error:&setCategoryError]
		 
	[avSession setCategory:AVAudioSessionCategoryMulti
         withOptions:AVAudioSessionCategoryOptionMixWithOthers | AVAudioSessionCategoryOptionDefaultToSpeaker
         error:&setCategoryError]
	

	//[[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(handleInterruption:) name:AVAudioSessionInterruptionNotification object: [AVAudioSession sharedInstance]];
}

/*- (void)addEvents:(CDVInvokedUrlCommand*)command
{
    NSLog(@"Add event with success");
    callbackId = command.callbackId;
}

- (void)handleInterruption:(NSNotification *)notification
{
    if ([notification.name isEqualToString:AVAudioSessionInterruptionNotification])
	{
        NSLog(@"Interruption notification");

        if ([[notification.userInfo valueForKey:AVAudioSessionInterruptionTypeKey] isEqualToNumber:[NSNumber numberWithInt:AVAudioSessionInterruptionTypeBegan]])
		{
		    NSMutableDictionary* eventData = [[NSMutableDictionary alloc] init];
			[eventData setObject:@"interrupted" forKey:@"status"];
		
            NSLog(@"InterruptionTypeBegan");
			[self triggerJSEvent: @"onAudioInterruptioniOS" withData: eventData];
        }
		else
		{
			NSMutableDictionary* eventData = [[NSMutableDictionary alloc] init];
			[eventData setObject:@"resumed" forKey:@"status"];
			
            NSLog(@"InterruptionTypeEnded");
			[self triggerJSEvent: @"onAudioInterruptioniOS" withData: eventData];
        }
    }
}			

- (void)triggerJSEvent:(NSString*)type withData:(NSMutableDictionary*) data
{
    NSMutableDictionary* message = [[NSMutableDictionary alloc] init];
    [message setObject:type forKey:@"eventType"];
    [message setObject:data forKey:@"data"];
    
    CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsDictionary:message];
    [pluginResult setKeepCallbackAsBool:YES];
    
    [self.commandDelegate sendPluginResult:pluginResult callbackId:callbackId];
}					   
*/
@end
