package com.xiaomi.push.service;

import android.content.Context;
import android.net.Uri;
import android.provider.Settings;
import com.xiaomi.push.a3;
/* loaded from: classes5.dex */
public class g0 {

    /* renamed from: c  reason: collision with root package name */
    private static g0 f37246c;

    /* renamed from: a  reason: collision with root package name */
    private Context f37247a;

    /* renamed from: b  reason: collision with root package name */
    private int f37248b = 0;

    private g0(Context context) {
        this.f37247a = context.getApplicationContext();
    }

    public static g0 c(Context context) {
        if (f37246c == null) {
            f37246c = new g0(context);
        }
        return f37246c;
    }

    public int a() {
        int i9 = this.f37248b;
        if (i9 != 0) {
            return i9;
        }
        try {
            this.f37248b = Settings.Global.getInt(this.f37247a.getContentResolver(), "device_provisioned", 0);
        } catch (Exception unused) {
        }
        return this.f37248b;
    }

    public Uri b() {
        return Settings.Global.getUriFor("device_provisioned");
    }

    public boolean d() {
        String str = a3.f36362a;
        return str.contains("xmsf") || str.contains("xiaomi") || str.contains("miui");
    }
}
