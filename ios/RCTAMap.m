#import "RCTAMap.h"
#import "RCTComponent.h"

@implementation RCTAMap
{
    NSMutableArray<UIView<RCTComponent> *> *_reactSubviews;
}

-(void) insertReactSubview:(id<RCTComponent>)subview atIndex:(NSInteger)atIndex {
    
}

-(void) removeReactSubview:(id<RCTComponent>)subview {
    
}

- (NSArray<id<RCTComponent>> *)reactSubviews {
    return _reactSubviews;
}


@end
