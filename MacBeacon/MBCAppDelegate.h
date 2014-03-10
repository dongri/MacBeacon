//
//  MBCAppDelegate.h
//  MacBeacon
//
//  Created by Dongri Jin on 3/9/14.
//  Copyright (c) 2014 Origami. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <IOBluetooth/IOBluetooth.h>

#import "BeaconAdvertisementData.h"

@interface MBCAppDelegate : NSObject <NSApplicationDelegate, CBPeripheralManagerDelegate>

@property (assign) IBOutlet NSWindow *window;
@property (strong, nonatomic) CBPeripheralManager *manager;

@end
