#import "FlutterCountryPickerPlugin.h"
#import "flutter_country_picker-Swift.h"

@implementation FlutterCountryPickerPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterCountryPickerPlugin registerWithRegistrar:registrar];
}
@end
