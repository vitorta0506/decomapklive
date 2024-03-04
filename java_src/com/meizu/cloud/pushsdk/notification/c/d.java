package com.meizu.cloud.pushsdk.notification.c;

import android.content.Context;
import android.content.res.AssetManager;
import com.meizu.cloud.pushinternal.DebugLogger;
/* loaded from: classes4.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private static d f28744a;

    /* renamed from: b  reason: collision with root package name */
    private AssetManager f28745b;

    private d(Context context) {
        b(context);
    }

    public static d a(Context context) {
        if (f28744a == null) {
            f28744a = new d(context);
        }
        return f28744a;
    }

    private void b(Context context) {
        this.f28745b = context.getAssets();
    }

    public int a(Context context, String str, String str2) {
        DebugLogger.i("ResourceReader", "Get resource type " + str2 + " " + str);
        return context.getResources().getIdentifier(str, str2, context.getApplicationInfo().packageName);
    }
}
