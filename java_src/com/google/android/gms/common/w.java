package com.google.android.gms.common;

import android.util.Log;
import androidx.annotation.NonNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class w {

    /* renamed from: e  reason: collision with root package name */
    private static final w f7846e = new w(true, 3, 1, null, null);

    /* renamed from: a  reason: collision with root package name */
    final boolean f7847a;

    /* renamed from: b  reason: collision with root package name */
    final String f7848b;

    /* renamed from: c  reason: collision with root package name */
    final Throwable f7849c;

    /* renamed from: d  reason: collision with root package name */
    final int f7850d;

    private w(boolean z10, int i9, int i10, String str, Throwable th2) {
        this.f7847a = z10;
        this.f7850d = i9;
        this.f7848b = str;
        this.f7849c = th2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Deprecated
    public static w b() {
        return f7846e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static w c(@NonNull String str) {
        return new w(false, 1, 5, str, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static w d(@NonNull String str, @NonNull Throwable th2) {
        return new w(false, 1, 5, str, th2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static w f(int i9) {
        return new w(true, i9, 1, null, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static w g(int i9, int i10, @NonNull String str, Throwable th2) {
        return new w(false, i9, i10, str, th2);
    }

    String a() {
        return this.f7848b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void e() {
        if (this.f7847a || !Log.isLoggable("GoogleCertificatesRslt", 3)) {
            return;
        }
        if (this.f7849c != null) {
            Log.d("GoogleCertificatesRslt", a(), this.f7849c);
        } else {
            Log.d("GoogleCertificatesRslt", a());
        }
    }
}
