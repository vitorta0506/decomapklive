package com.google.android.play.core.internal;

import android.content.Context;
/* loaded from: classes2.dex */
public final class y0 {
    public static Context a(Context context) {
        Context applicationContext = context.getApplicationContext();
        return applicationContext != null ? applicationContext : context;
    }
}
