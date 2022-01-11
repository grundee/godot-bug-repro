/*************************************************************************/
/*  appodeal_example.cpp                                                 */
/*************************************************************************/
/*                       This file is part of:                           */
/*                           GODOT ENGINE                                */
/*                      https://godotengine.org                          */
/*************************************************************************/
/* Copyright (c) 2007-2021 Juan Linietsky, Ariel Manzur.                 */
/* Copyright (c) 2014-2021 Godot Engine contributors (cf. AUTHORS.md).   */
/*                                                                       */
/* Permission is hereby granted, free of charge, to any person obtaining */
/* a copy of this software and associated documentation files (the       */
/* "Software"), to deal in the Software without restriction, including   */
/* without limitation the rights to use, copy, modify, merge, publish,   */
/* distribute, sublicense, and/or sell copies of the Software, and to    */
/* permit persons to whom the Software is furnished to do so, subject to */
/* the following conditions:                                             */
/*                                                                       */
/* The above copyright notice and this permission notice shall be        */
/* included in all copies or substantial portions of the Software.       */
/*                                                                       */
/* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,       */
/* EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF    */
/* MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.*/
/* IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY  */
/* CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,  */
/* TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE     */
/* SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.                */
/*************************************************************************/

#include "appodeal_example.h"

#import <Foundation/Foundation.h>

#import "platform/iphone/app_delegate.h"
#import "platform/iphone/view_controller.h"
#import <Appodeal/Appodeal.h>

AppodealExample::AppodealExample() {
    [Appodeal setLogLevel:APDLogLevelDebug];
    [Appodeal setTestingEnabled: YES];

    [Appodeal initializeWithApiKey:@"abcdabcd"
              types:(AppodealAdType)AppodealAdTypeBanner
              hasConsent:false];

    UIViewController *vc = [[[[UIApplication sharedApplication] delegate] window] rootViewController];
    [Appodeal showAd: AppodealShowStyleBannerTop rootViewController:vc];
}

AppodealExample::~AppodealExample() {
}

void AppodealExample::_bind_methods() {
}
