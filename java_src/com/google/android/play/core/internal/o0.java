package com.google.android.play.core.internal;

import android.util.Log;
import java.io.File;
/* loaded from: classes2.dex */
final class o0 implements d0 {
    @Override // com.google.android.play.core.internal.d0
    public final boolean a(Object obj, File file, File file2) {
        try {
            return !((Boolean) v0.f(Class.forName("dalvik.system.DexFile"), "isDexOptNeeded", Boolean.class, String.class, file.getPath())).booleanValue();
        } catch (ClassNotFoundException unused) {
            Log.e("SplitCompat", "Unexpected missing dalvik.system.DexFile.");
            return false;
        }
    }
}
