package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.os.Looper;
/* loaded from: classes2.dex */
public final class c {
    /* JADX INFO: Access modifiers changed from: package-private */
    public c(Context context) {
    }

    public static final boolean a() {
        return Looper.myLooper() == Looper.getMainLooper();
    }
}
