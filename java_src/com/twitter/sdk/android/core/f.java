package com.twitter.sdk.android.core;

import android.content.Context;
import android.content.Intent;
/* loaded from: classes4.dex */
public class f {
    public static boolean a(Context context, Intent intent) {
        return !context.getPackageManager().queryIntentActivities(intent, 0).isEmpty();
    }

    public static boolean b(Context context, Intent intent) {
        if (a(context, intent)) {
            context.startActivity(intent);
            return true;
        }
        return false;
    }
}
