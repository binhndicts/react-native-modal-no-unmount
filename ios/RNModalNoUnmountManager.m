
#import <UIKit/UIKit.h>
#import <React/RCTModalHostViewManager.h>
#import <React/RCTBridgeModule.h>
#import "RNModalNoUnmountManager.h"
#import "RNModalHostView.h"

@interface RNModalNoUnmountManager () <RCTModalHostViewInteractor>

@end

@implementation RNModalNoUnmountManager
{
  NSHashTable *_hostViews;
}

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}
RCT_EXPORT_MODULE()

- (UIView *)view
{
  RNModalHostView *view = [[RNModalHostView alloc] initWithBridge:self.bridge];
  view.delegate = self;
  if (!_hostViews) {
    _hostViews = [NSHashTable weakObjectsHashTable];
  }
  [_hostViews addObject:view];
  return view;
}

RCT_EXPORT_VIEW_PROPERTY(visible, BOOL)
RCT_EXPORT_VIEW_PROPERTY(onOrientationChange, RCTDirectEventBlock)

@end

  