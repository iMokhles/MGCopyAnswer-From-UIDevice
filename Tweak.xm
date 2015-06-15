#import <UIKit/UIKit.h>

@interface UIDevice (_P_API)
- (id)_deviceInfoForKey:(NSString *)key;
@end

%ctor {
	UIDevice *device = [UIDevice currentDevice];

	dispatch_async(dispatch_get_main_queue(), ^{
		UIAlertView *alertView = [[UIAlertView alloc]
				initWithTitle:@"Test UIDevice"
				message:[NSString stringWithFormat:@"DEVICE INFO FROM UIDevice:\n UDID : %@", [device _deviceInfoForKey:@"UniqueDeviceID"]]
				delegate:self
				cancelButtonTitle:@"OK"
				otherButtonTitles:nil];
		[alertView show];
	});
}