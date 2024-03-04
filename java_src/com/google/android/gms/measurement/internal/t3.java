package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import androidx.annotation.WorkerThread;
/* loaded from: classes2.dex */
public final class t3 {

    /* renamed from: a  reason: collision with root package name */
    private final String f9863a;

    /* renamed from: b  reason: collision with root package name */
    private final long f9864b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f9865c;

    /* renamed from: d  reason: collision with root package name */
    private long f9866d;

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ x3 f9867e;

    public t3(x3 x3Var, String str, long j10) {
        this.f9867e = x3Var;
        com.google.android.gms.common.internal.p.f(str);
        this.f9863a = str;
        this.f9864b = j10;
    }

    @WorkerThread
    public final long a() {
        if (!this.f9865c) {
            this.f9865c = true;
            this.f9866d = this.f9867e.o().getLong(this.f9863a, this.f9864b);
        }
        return this.f9866d;
    }

    @WorkerThread
    public final void b(long j10) {
        SharedPreferences.Editor edit = this.f9867e.o().edit();
        edit.putLong(this.f9863a, j10);
        edit.apply();
        this.f9866d = j10;
    }
}
