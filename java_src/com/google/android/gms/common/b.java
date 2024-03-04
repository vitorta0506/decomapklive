package com.google.android.gms.common;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.s1;
/* loaded from: classes2.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    public static final int f7623a = d.f7626a;

    /* renamed from: b  reason: collision with root package name */
    private static final b f7624b = new b();

    @NonNull
    public static b f() {
        return f7624b;
    }

    public int a(@NonNull Context context) {
        return d.a(context);
    }

    @Nullable
    public Intent b(@Nullable Context context, int i9, @Nullable String str) {
        if (i9 != 1 && i9 != 2) {
            if (i9 != 3) {
                return null;
            }
            return s1.c("com.google.android.gms");
        } else if (context != null && e4.h.d(context)) {
            return s1.a();
        } else {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("gcore_");
            sb2.append(f7623a);
            sb2.append("-");
            if (!TextUtils.isEmpty(str)) {
                sb2.append(str);
            }
            sb2.append("-");
            if (context != null) {
                sb2.append(context.getPackageName());
            }
            sb2.append("-");
            if (context != null) {
                try {
                    sb2.append(g4.c.a(context).e(context.getPackageName(), 0).versionCode);
                } catch (PackageManager.NameNotFoundException unused) {
                }
            }
            return s1.b("com.google.android.gms", sb2.toString());
        }
    }

    @Nullable
    public PendingIntent c(@NonNull Context context, int i9, int i10) {
        return d(context, i9, i10, null);
    }

    @Nullable
    public PendingIntent d(@NonNull Context context, int i9, int i10, @Nullable String str) {
        Intent b10 = b(context, i9, str);
        if (b10 == null) {
            return null;
        }
        return PendingIntent.getActivity(context, i10, b10, com.google.android.gms.internal.common.m.f7928a | 134217728);
    }

    @NonNull
    public String e(int i9) {
        return d.b(i9);
    }

    public int g(@NonNull Context context) {
        return h(context, f7623a);
    }

    public int h(@NonNull Context context, int i9) {
        int f10 = d.f(context, i9);
        if (d.g(context, f10)) {
            return 18;
        }
        return f10;
    }

    public boolean i(@NonNull Context context, @NonNull String str) {
        return d.k(context, str);
    }

    public boolean j(int i9) {
        return d.i(i9);
    }
}
