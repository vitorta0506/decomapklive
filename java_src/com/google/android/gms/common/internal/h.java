package com.google.android.gms.common.internal;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* loaded from: classes2.dex */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    private final String f7743a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final String f7744b;

    public h(@NonNull String str) {
        this(str, null);
    }

    private final String f(String str) {
        String str2 = this.f7744b;
        return str2 == null ? str : str2.concat(str);
    }

    public boolean a(int i9) {
        return Log.isLoggable(this.f7743a, i9);
    }

    public void b(@NonNull String str, @NonNull String str2) {
        if (a(3)) {
            Log.d(str, f(str2));
        }
    }

    public void c(@NonNull String str, @NonNull String str2, @NonNull Throwable th2) {
        if (a(6)) {
            Log.e(str, f(str2), th2);
        }
    }

    public void d(@NonNull String str, @NonNull String str2) {
        if (a(2)) {
            Log.v(str, f(str2));
        }
    }

    public void e(@NonNull String str, @NonNull String str2) {
        if (a(5)) {
            Log.w(str, f(str2));
        }
    }

    public h(@NonNull String str, @Nullable String str2) {
        p.k(str, "log tag cannot be null");
        p.c(str.length() <= 23, "tag \"%s\" is longer than the %d character maximum", str, 23);
        this.f7743a = str;
        if (str2 == null || str2.length() <= 0) {
            this.f7744b = null;
        } else {
            this.f7744b = str2;
        }
    }
}
