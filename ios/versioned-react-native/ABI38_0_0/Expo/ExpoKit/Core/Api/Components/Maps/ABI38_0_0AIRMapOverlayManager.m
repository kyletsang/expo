#import "ABI38_0_0AIRMapOverlayManager.h"

#import <ABI38_0_0React/ABI38_0_0RCTConvert+CoreLocation.h>
#import <ABI38_0_0React/ABI38_0_0RCTUIManager.h>
#import <ABI38_0_0React/ABI38_0_0UIView+React.h>
#import "ABI38_0_0AIRMapOverlay.h"

@interface ABI38_0_0AIRMapOverlayManager () <MKMapViewDelegate>

@end

@implementation ABI38_0_0AIRMapOverlayManager

ABI38_0_0RCT_EXPORT_MODULE()

- (UIView *)view
{
    ABI38_0_0AIRMapOverlay *overlay = [ABI38_0_0AIRMapOverlay new];
    overlay.bridge = self.bridge;
    return overlay;
}

ABI38_0_0RCT_REMAP_VIEW_PROPERTY(bounds, boundsRect, NSArray)
ABI38_0_0RCT_REMAP_VIEW_PROPERTY(image, imageSrc, NSString)

@end

