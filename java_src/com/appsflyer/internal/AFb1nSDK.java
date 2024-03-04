package com.appsflyer.internal;

import android.content.Context;
import androidx.annotation.Nullable;
import java.lang.ref.WeakReference;
/* loaded from: classes.dex */
public final class AFb1nSDK {
    public String AFInAppEventType;
    public final WeakReference<Context> values;

    public AFb1nSDK() {
    }

    public AFb1nSDK(Context context) {
        this.values = new WeakReference<>(context);
    }

    public static boolean values(@Nullable String str) {
        return str == null || str.length() == 0;
    }
}
