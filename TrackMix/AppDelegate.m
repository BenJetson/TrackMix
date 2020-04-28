//
//  AppDelegate.m
//  TrackMix
//
//  Created by Ben Godfrey on 4/27/20.
//  Copyright © 2020 Ben Godfrey. All rights reserved.
//

#import "AppDelegate.h"
#import "Track.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    
    // Initialize the Track object.
    Track *aTrack = [[Track alloc] init];
    [self setTrack:aTrack]; // equivalent to self.track = aTrack, which is also legal.
    [self updateUserInterface];
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


- (void) updateUserInterface {
    float volume = [self.track volume];
    
    [self.textField setFloatValue:volume];
    [self.slider setFloatValue:volume];
}

- (IBAction)mute:(id)sender {
    [self.track setVolume:0.0];
    [self updateUserInterface];
}

- (IBAction)takeFloatValueForVolumeFrom:(id)sender {
    float newValue = [sender floatValue];
    [self.track setVolume:newValue];
    [self updateUserInterface];
}
@end
