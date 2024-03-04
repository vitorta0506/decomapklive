package com.twitter.sdk.android.core.internal;

import android.content.Context;
import android.content.res.Resources;
import androidx.constraintlayout.core.motion.utils.TypedValues;
/* loaded from: classes4.dex */
public class b {
    static String a(Context context) {
        int i9 = context.getApplicationContext().getApplicationInfo().icon;
        if (i9 > 0) {
            return context.getResources().getResourcePackageName(i9);
        }
        return context.getPackageName();
    }

    static int b(Context context, String str, String str2) {
        return context.getResources().getIdentifier(str, str2, a(context));
    }

    public static String c(Context context, String str, String str2) {
        Resources resources;
        int b10;
        return (context == null || (resources = context.getResources()) == null || (b10 = b(context, str, TypedValues.Custom.S_STRING)) <= 0) ? str2 : resources.getString(b10);
    }

    public static void d(String str, String str2) {
        if (!com.twitter.sdk.android.core.l.j()) {
            com.twitter.sdk.android.core.l.g().w(str, str2);
            return;
        }
        throw new IllegalStateException(str2);
    }
}
