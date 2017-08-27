
#import "RNReactNativeTwitter.h"
#import <Social/Social.h>
#import <React/RCTConvert.h>

@implementation RNReactNativeTwitter

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}
RCT_EXPORT_MODULE()

-(void)share:(NSString *)serviceType
     options:(NSDictionary *)options
    callback:(RCTResponseSenderBlock)callback
{
    if (![SLComposeViewController isAvailableForServiceType:serviceType]) {
        callback(@[@"not_available"]);
        return;
    }
    
    SLComposeViewController *composeCtl = [SLComposeViewController composeViewControllerForServiceType:serviceType];
    
    if ([options objectForKey:@"link"] && [options objectForKey:@"link"] != [NSNull null]) {
        NSString *link = [RCTConvert NSString:options[@"link"]];
        [composeCtl addURL:[NSURL URLWithString:link]];
    }
    
    if ([options objectForKey:@"image"] && [options objectForKey:@"image"] != [NSNull null]) {
        [composeCtl addImage: [UIImage imageNamed: options[@"image"]]];
    } else if ([options objectForKey:@"imagelink"] && [options objectForKey:@"imagelink"] != [NSNull null]) {
        NSString *imagelink = [RCTConvert NSString:options[@"imagelink"]];
        UIImage *image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:imagelink]]];
        [composeCtl addImage:image];
    }
    
    if ([options objectForKey:@"text"] && [options objectForKey:@"text"] != [NSNull null]) {
        NSString *text = [RCTConvert NSString:options[@"text"]];
        [composeCtl setInitialText:text];
    }
    
    [composeCtl setCompletionHandler:^(SLComposeViewControllerResult result) {
        if (result == SLComposeViewControllerResultDone) {
            // Sent
            callback(@[@"success"]);
        }
        else if (result == SLComposeViewControllerResultCancelled){
            // Cancelled
            callback(@[@"cancelled"]);
        }
    }];
    
    UIViewController *ctrl = [[[[UIApplication sharedApplication] delegate] window] rootViewController];
    [ctrl presentViewController:composeCtl animated:YES completion: nil];
}

RCT_EXPORT_METHOD(tweet:(NSDictionary *)options
                  callback: (RCTResponseSenderBlock)callback)
{
    [self share:SLServiceTypeTwitter options:options callback: callback];
}

@end
