package com.appsflyer.internal;

import android.content.Context;
import com.appsflyer.internal.AFe1iSDK;
import java.util.Map;
/* loaded from: classes.dex */
public abstract class AFe1oSDK extends AFe1iSDK {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AFe1oSDK(String str, String str2, Runnable runnable) {
        super(str, str2, runnable);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void AFInAppEventParameterName(Context context, AFb1hSDK<Map<String, Object>> aFb1hSDK) {
        AFa1aSDK.values();
        if (AFa1aSDK.valueOf(AFa1aSDK.AFKeystoreWrapper(context), false) > 0 || !aFb1hSDK.AFInAppEventParameterName()) {
            return;
        }
        aFb1hSDK.values.AFInAppEventType().execute(aFb1hSDK.AFKeystoreWrapper);
        this.AFLogger = System.currentTimeMillis();
        this.AFKeystoreWrapper = AFe1iSDK.AFa1xSDK.STARTED;
        addObserver(new AFe1iSDK.AnonymousClass5());
    }
}
