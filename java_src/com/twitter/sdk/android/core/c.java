package com.twitter.sdk.android.core;

import android.util.Log;
/* loaded from: classes4.dex */
public class c implements g {

    /* renamed from: a  reason: collision with root package name */
    private int f35107a;

    public c(int i9) {
        this.f35107a = i9;
    }

    public void a(String str, String str2, Throwable th2) {
        if (b(str, 3)) {
            Log.d(str, str2, th2);
        }
    }

    public boolean b(String str, int i9) {
        return this.f35107a <= i9;
    }

    public void c(String str, String str2, Throwable th2) {
        if (b(str, 5)) {
            Log.w(str, str2, th2);
        }
    }

    @Override // com.twitter.sdk.android.core.g
    public void d(String str, String str2) {
        a(str, str2, null);
    }

    @Override // com.twitter.sdk.android.core.g
    public void e(String str, String str2, Throwable th2) {
        if (b(str, 6)) {
            Log.e(str, str2, th2);
        }
    }

    @Override // com.twitter.sdk.android.core.g
    public void w(String str, String str2) {
        c(str, str2, null);
    }

    public c() {
        this.f35107a = 4;
    }

    @Override // com.twitter.sdk.android.core.g
    public void e(String str, String str2) {
        e(str, str2, null);
    }
}
