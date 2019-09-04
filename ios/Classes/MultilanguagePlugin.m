#import "MultilanguagePlugin.h"
#import <multilanguage/multilanguage-Swift.h>

@implementation MultilanguagePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftMultilanguagePlugin registerWithRegistrar:registrar];
}
@end
