package com.xiaomi.push;

import android.content.Context;
/* loaded from: classes5.dex */
public class h0 {

    /* renamed from: b  reason: collision with root package name */
    private static volatile h0 f36888b;

    /* renamed from: a  reason: collision with root package name */
    private Context f36889a;

    private h0(Context context) {
        this.f36889a = context;
    }

    public static h0 a(Context context) {
        if (f36888b == null) {
            synchronized (h0.class) {
                if (f36888b == null) {
                    f36888b = new h0(context);
                }
            }
        }
        return f36888b;
    }

    @Deprecated
    public void b(String str, String str2, String str3, String str4) {
    }
}
