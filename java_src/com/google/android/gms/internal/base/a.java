package com.google.android.gms.internal.base;

import android.os.Build;
import androidx.annotation.ChecksSdkIntAtLeast;
/* loaded from: classes2.dex */
final class a {
    /* JADX INFO: Access modifiers changed from: package-private */
    @ChecksSdkIntAtLeast(api = 33, codename = "Tiramisu")
    public static boolean a() {
        return Build.VERSION.SDK_INT >= 33 || Build.VERSION.CODENAME.charAt(0) == 'T';
    }
}
