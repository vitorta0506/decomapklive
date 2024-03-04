package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import androidx.annotation.Nullable;
/* loaded from: classes2.dex */
public final class m1 {

    /* renamed from: f  reason: collision with root package name */
    private static final Uri f7752f = new Uri.Builder().scheme("content").authority("com.google.android.gms.chimera").build();
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final String f7753a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final String f7754b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final ComponentName f7755c;

    /* renamed from: d  reason: collision with root package name */
    private final int f7756d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f7757e;

    public m1(String str, String str2, int i9, boolean z10) {
        p.f(str);
        this.f7753a = str;
        p.f(str2);
        this.f7754b = str2;
        this.f7755c = null;
        this.f7756d = i9;
        this.f7757e = z10;
    }

    public final int a() {
        return this.f7756d;
    }

    @Nullable
    public final ComponentName b() {
        return this.f7755c;
    }

    public final Intent c(Context context) {
        Bundle bundle;
        if (this.f7753a != null) {
            if (this.f7757e) {
                Bundle bundle2 = new Bundle();
                bundle2.putString("serviceActionBundleKey", this.f7753a);
                try {
                    bundle = context.getContentResolver().call(f7752f, "serviceIntentCall", (String) null, bundle2);
                } catch (IllegalArgumentException e10) {
                    Log.w("ConnectionStatusConfig", "Dynamic intent resolution failed: ".concat(e10.toString()));
                    bundle = null;
                }
                r2 = bundle != null ? (Intent) bundle.getParcelable("serviceResponseIntentKey") : null;
                if (r2 == null) {
                    Log.w("ConnectionStatusConfig", "Dynamic lookup for intent failed for action: ".concat(String.valueOf(this.f7753a)));
                }
            }
            return r2 != null ? r2 : new Intent(this.f7753a).setPackage(this.f7754b);
        }
        return new Intent().setComponent(this.f7755c);
    }

    @Nullable
    public final String d() {
        return this.f7754b;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof m1) {
            m1 m1Var = (m1) obj;
            return n.b(this.f7753a, m1Var.f7753a) && n.b(this.f7754b, m1Var.f7754b) && n.b(this.f7755c, m1Var.f7755c) && this.f7756d == m1Var.f7756d && this.f7757e == m1Var.f7757e;
        }
        return false;
    }

    public final int hashCode() {
        return n.c(this.f7753a, this.f7754b, this.f7755c, Integer.valueOf(this.f7756d), Boolean.valueOf(this.f7757e));
    }

    public final String toString() {
        String str = this.f7753a;
        if (str == null) {
            p.j(this.f7755c);
            return this.f7755c.flattenToString();
        }
        return str;
    }
}
