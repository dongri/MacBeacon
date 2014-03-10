//
//  MBCAppDelegate.m
//  MacBeacon
//
//  Created by Dongri Jin on 3/9/14.
//  Copyright (c) 2014 Origami. All rights reserved.
//

#import "MBCAppDelegate.h"

@implementation MBCAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // CBPeripheralManagerを初期化
    self.manager = [[CBPeripheralManager alloc] initWithDelegate:self
                                                           queue:nil];
}


- (void)peripheralManagerDidUpdateState:(CBPeripheralManager *)peripheral {
    // Bluetoothがオンのときにアドバタイズする
    if (peripheral.state == CBPeripheralManagerStatePoweredOn) {
        
        // UUIDを適当に作成(uuidgenコマンドで生成する)
        NSUUID *proximityUUID = [[NSUUID alloc] initWithUUIDString:@"0EAE4C85-CDA0-432B-8370-DCE61F61803E"];
        
        // アドバタイズ用のデータを作成
        BeaconAdvertisementData *beaconData
        = [[BeaconAdvertisementData alloc] initWithProximityUUID:proximityUUID
                                                              major:1
                                                              minor:1
                                                      measuredPower:-58];
        
        // アドバタイズ開始
        [peripheral startAdvertising:beaconData.beaconAdvertisement];
    }
}

@end