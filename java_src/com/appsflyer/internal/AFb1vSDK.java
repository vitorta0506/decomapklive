package com.appsflyer.internal;

import com.appsflyer.AFLogger;
/* loaded from: classes.dex */
public final class AFb1vSDK {
    private final AFa1xSDK AFInAppEventType = new AFa1xSDK() { // from class: com.appsflyer.internal.AFb1vSDK.2
        @Override // com.appsflyer.internal.AFb1vSDK.AFa1xSDK
        public final Class<?> AFInAppEventType(String str) throws ClassNotFoundException {
            return Class.forName(str);
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public interface AFa1xSDK {
        Class<?> AFInAppEventType(String str) throws ClassNotFoundException;
    }

    /* loaded from: classes.dex */
    enum AFa1zSDK {
        ADOBE_AIR("android_adobe_air", "com.appsflyer.adobeair.AppsFlyerExtension"),
        ADOBE_MOBILE_SDK("android_adobe_mobile", "com.appsflyer.adobeextension.AppsFlyerAdobeExtension"),
        COCOS2DX("android_cocos2dx", "org.cocos2dx.lib.Cocos2dxActivity"),
        CORDOVA("android_cordova", "com.appsflyer.cordova.plugin.AppsFlyerPlugin"),
        DEFAULT("android_native", "android_native"),
        FLUTTER("android_flutter", "com.appsflyer.appsflyersdk.AppsflyerSdkPlugin"),
        M_PARTICLE("android_mparticle", "com.mparticle.kits.AppsFlyerKit"),
        NATIVE_SCRIPT("android_native_script", "com.tns.NativeScriptActivity"),
        EXPO("android_expo", "expo.modules.devmenu.react.DevMenuAwareReactActivity"),
        REACT_NATIVE("android_reactNative", "com.appsflyer.reactnative.RNAppsFlyerModule"),
        SEGMENT("android_segment", "com.segment.analytics.android.integrations.appsflyer.AppsflyerIntegration"),
        UNITY("android_unity", "com.appsflyer.unity.AppsFlyerAndroidWrapper"),
        UNREAL_ENGINE("android_unreal", "com.epicgames.ue4.GameActivity"),
        XAMARIN("android_xamarin", "mono.android.Runtime"),
        CAPACITOR("android_capacitor", "capacitor.plugin.appsflyer.sdk.AppsFlyerPlugin");
        
        private final String onInstallConversionDataLoadedNative;
        private final String onInstallConversionFailureNative;

        AFa1zSDK(String str, String str2) {
            this.onInstallConversionFailureNative = str;
            this.onInstallConversionDataLoadedNative = str2;
        }
    }

    private boolean AFInAppEventType(String str) {
        try {
            this.AFInAppEventType.AFInAppEventType(str);
            StringBuilder sb2 = new StringBuilder("Class: ");
            sb2.append(str);
            sb2.append(" is found.");
            AFLogger.afRDLog(sb2.toString());
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        } catch (Throwable th2) {
            AFLogger.afErrorLog(th2.getMessage(), th2);
            return false;
        }
    }

    public final String values() {
        AFa1zSDK[] values;
        for (AFa1zSDK aFa1zSDK : AFa1zSDK.values()) {
            if (AFInAppEventType(aFa1zSDK.onInstallConversionDataLoadedNative)) {
                return aFa1zSDK.onInstallConversionFailureNative;
            }
        }
        return AFa1zSDK.DEFAULT.onInstallConversionFailureNative;
    }
}
