//
// Copyright © 2020 osy. All rights reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//

#import "UTMViewState.h"

const NSString *const kUTMViewStateDisplayScaleKey = @"DisplayScale";
const NSString *const kUTMViewStateDisplayOriginXKey = @"DisplayOriginX";
const NSString *const kUTMViewStateDisplayOriginYKey = @"DisplayOriginY";
const NSString *const kUTMViewStateShowToolbarKey = @"ShowToolbar";
const NSString *const kUTMViewStateShowKeyboardKey = @"ShowKeyboard";

@interface UTMViewState ()

@property (nonatomic, nullable) NSURL *path;

@end

@implementation UTMViewState {
    NSMutableDictionary *_rootDict;
}

#pragma mark - Properties

- (NSDictionary *)dictRepresentation {
    return (NSDictionary *)_rootDict;
}

- (double)displayScale {
    return [_rootDict[kUTMViewStateDisplayScaleKey] doubleValue];
}

- (void)setDisplayScale:(double)displayScale {
    _rootDict[kUTMViewStateDisplayScaleKey] = [NSNumber numberWithDouble:displayScale];
}

- (double)displayOriginX {
    return [_rootDict[kUTMViewStateDisplayOriginXKey] doubleValue];
}

- (void)setDisplayOriginX:(double)displayOriginX {
    _rootDict[kUTMViewStateDisplayOriginXKey] = [NSNumber numberWithDouble:displayOriginX];
}

- (double)displayOriginY {
    return [_rootDict[kUTMViewStateDisplayOriginYKey] doubleValue];
}

- (void)setDisplayOriginY:(double)displayOriginY {
    _rootDict[kUTMViewStateDisplayOriginYKey] = [NSNumber numberWithDouble:displayOriginY];
}

- (BOOL)showToolbar {
    return [_rootDict[kUTMViewStateShowToolbarKey] boolValue];
}

- (void)setShowToolbar:(BOOL)showToolbar {
    _rootDict[kUTMViewStateShowToolbarKey] = [NSNumber numberWithBool:showToolbar];
}

- (BOOL)showKeyboard {
    return [_rootDict[kUTMViewStateShowKeyboardKey] boolValue];
}

- (void)setShowKeyboard:(BOOL)showKeyboard {
    _rootDict[kUTMViewStateShowKeyboardKey] = [NSNumber numberWithBool:showKeyboard];
}

#pragma mark - Init

- (id)initDefaults {
    self = [self init];
    if (self) {
        _rootDict = [NSMutableDictionary dictionary];
        self.displayScale = 1.0;
        self.displayOriginX = 0;
        self.displayOriginY = 0;
        self.showKeyboard = NO;
        self.showToolbar = YES;
    }
    return self;
}

- (id)initWithDictionary:(NSMutableDictionary *)dictionary {
    self = [self init];
    if (self) {
        _rootDict = dictionary;
    }
    return self;
}

@end
