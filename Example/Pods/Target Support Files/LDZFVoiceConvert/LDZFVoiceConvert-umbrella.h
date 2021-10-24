#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "MQChatAudioTypes.h"
#import "AmrRecordWriter.h"
#import "AMR_Debug.h"
#import "interf_dec.h"
#import "interf_enc.h"
#import "dec_if.h"
#import "if_rom.h"
#import "CafRecordWriter.h"
#import "MLAudioMeterObserver.h"
#import "MLAudioRecorder.h"
#import "amrFileCodec.h"
#import "MEIQIA_VoiceConverter.h"

FOUNDATION_EXPORT double LDZFVoiceConvertVersionNumber;
FOUNDATION_EXPORT const unsigned char LDZFVoiceConvertVersionString[];

