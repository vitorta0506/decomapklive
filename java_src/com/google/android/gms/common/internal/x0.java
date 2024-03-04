package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;
import androidx.annotation.Nullable;
/* loaded from: classes2.dex */
public final class x0 {

    /* renamed from: a  reason: collision with root package name */
    private static final Object f7795a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private static boolean f7796b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private static String f7797c;

    /* renamed from: d  reason: collision with root package name */
    private static int f7798d;

    public static int a(Context context) {
        b(context);
        return f7798d;
    }

    private static void b(Context context) {
        Bundle bundle;
        synchronized (f7795a) {
            if (f7796b) {
                return;
            }
            f7796b = true;
            try {
                bundle = g4.c.a(context).c(context.getPackageName(), 128).metaData;
            } catch (PackageManager.NameNotFoundException e10) {
                Log.wtf("MetadataValueReader", "This should never happen.", e10);
            }
            if (bundle == null) {
                return;
            }
            f7797c = bundle.getString("com.google.app.id");
            f7798d = bundle.getInt("com.google.android.gms.version");
        }
    }
}
