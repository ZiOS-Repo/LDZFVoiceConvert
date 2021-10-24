//
//  IUViewController.m
//  LDZFVoiceConvert
//
//  Created by zhuyuhui434@gmail.com on 10/23/2021.
//  Copyright (c) 2021 zhuyuhui434@gmail.com. All rights reserved.
//

#import "IUViewController.h"
#import <LDZFVoiceConvert/MEIQIA_VoiceConverter.h>
@interface IUViewController (){
    NSData *voiceData;
}

@end

@implementation IUViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0), ^{
        //将voiceData写进文件
        NSString *wavPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0];
        wavPath = [wavPath stringByAppendingPathComponent:[NSString stringWithFormat:@"%d.wav", (int)[NSDate date].timeIntervalSince1970]];
        NSFileManager *fileManager = [NSFileManager defaultManager];
        [fileManager createFileAtPath:wavPath contents:voiceData attributes:nil];
        if (![fileManager fileExistsAtPath:wavPath]) {
            NSAssert(NO, @"将voiceData写进文件失败");
        }
        //将wav文件转换成amr文件
        NSString *amrPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0];
        amrPath = [amrPath stringByAppendingPathComponent:[NSString stringWithFormat:@"%d.amr", (int)[NSDate date].timeIntervalSince1970]];
        [MEIQIA_VoiceConverter wavToAmr:wavPath amrSavePath:amrPath];
        dispatch_async(dispatch_get_main_queue(), ^{
//            [self.chatCellDelegate resendMessageInCell:self resendData:@{@"voice" : amrPath}];
        });
    });
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
