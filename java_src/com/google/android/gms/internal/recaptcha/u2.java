package com.google.android.gms.internal.recaptcha;

import android.content.Context;
import android.os.SystemClock;
import java.io.File;
/* loaded from: classes2.dex */
public final class u2 {
    public static File a(Context context) {
        File filesDir = context.getFilesDir();
        if (filesDir == null) {
            SystemClock.sleep(100L);
            filesDir = context.getFilesDir();
            if (filesDir == null) {
                throw new IllegalStateException("getFilesDir returned null twice.");
            }
        }
        return filesDir;
    }
}
