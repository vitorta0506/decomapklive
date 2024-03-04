package com.appsflyer.internal;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import androidx.annotation.NonNull;
/* loaded from: classes.dex */
final class AFa1zSDK {
    private IntentFilter AFKeystoreWrapper = new IntentFilter("android.intent.action.BATTERY_CHANGED");

    /* loaded from: classes.dex */
    static final class AFa1vSDK {
        final String AFInAppEventParameterName;
        final float AFInAppEventType;

        AFa1vSDK(float f10, String str) {
            this.AFInAppEventType = f10;
            this.AFInAppEventParameterName = str;
        }
    }

    /* loaded from: classes.dex */
    static final class AFa1xSDK {
        static final AFa1zSDK AFKeystoreWrapper = new AFa1zSDK();
    }

    AFa1zSDK() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public final AFa1vSDK AFInAppEventParameterName(Context context) {
        String str = null;
        float f10 = 0.0f;
        try {
            Intent registerReceiver = context.registerReceiver(null, this.AFKeystoreWrapper);
            if (registerReceiver != null) {
                if (2 == registerReceiver.getIntExtra("status", -1)) {
                    int intExtra = registerReceiver.getIntExtra("plugged", -1);
                    str = intExtra != 1 ? intExtra != 2 ? intExtra != 4 ? "other" : "wireless" : "usb" : "ac";
                } else {
                    str = "no";
                }
                int intExtra2 = registerReceiver.getIntExtra("level", -1);
                int intExtra3 = registerReceiver.getIntExtra("scale", -1);
                if (-1 != intExtra2 && -1 != intExtra3) {
                    f10 = (intExtra2 * 100.0f) / intExtra3;
                }
            }
        } catch (Throwable unused) {
        }
        return new AFa1vSDK(f10, str);
    }
}
