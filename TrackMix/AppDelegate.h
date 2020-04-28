//
//  AppDelegate.h
//  TrackMix
//
//  Created by Ben Godfrey on 4/27/20.
//  Copyright © 2020 Ben Godfrey. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class Track;

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (strong) Track *track;
@property (weak) IBOutlet NSTextField *textField;
@property (weak) IBOutlet NSSlider *slider;

- (IBAction)mute:(id)sender;
- (IBAction)takeFloatValueForVolumeFrom:(id)sender;

- (void) updateUserInterface;

@end

