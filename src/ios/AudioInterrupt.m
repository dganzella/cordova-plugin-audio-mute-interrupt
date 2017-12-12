#import "AudioInterruptPlugin.h"

@implementation AudioInterruptPlugin{

}

#pragma mark -
#pragma mark Cordova Methods
-(void) pluginInitialize
{
	[[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(handleInterruption:) name:AVAudioSessionInterruptionNotification object: [AVAudioSession sharedInstance]];
}

- (void)handleInterruption:(NSNotification *)notification
{
    if ([notification.name isEqualToString:AVAudioSessionInterruptionNotification])
	{
        NSLog(@"Interruption notification");

        if ([[notification.userInfo valueForKey:AVAudioSessionInterruptionTypeKey] isEqualToNumber:[NSNumber numberWithInt:AVAudioSessionInterruptionTypeBegan]])
		{
            NSLog(@"InterruptionTypeBegan");
			self.webView.muted = YES;
        }
		else
		{
            NSLog(@"InterruptionTypeEnded");
			self.webView.muted = NO;
        }
    }
}			

- (void)onPause 
{
	self.webView.muted = YES;
}

 - (void)onResume
{
	self.webView.muted = NO;
}						   

@end
