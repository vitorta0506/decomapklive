package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import android.util.Pair;
import androidx.annotation.WorkerThread;
/* loaded from: classes2.dex */
public final class v3 {

    /* renamed from: a  reason: collision with root package name */
    final String f9912a;

    /* renamed from: b  reason: collision with root package name */
    private final String f9913b;

    /* renamed from: c  reason: collision with root package name */
    private final String f9914c;

    /* renamed from: d  reason: collision with root package name */
    private final long f9915d;

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ x3 f9916e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ v3(x3 x3Var, String str, long j10, p4.h hVar) {
        this.f9916e = x3Var;
        com.google.android.gms.common.internal.p.f("health_monitor");
        com.google.android.gms.common.internal.p.a(j10 > 0);
        this.f9912a = "health_monitor:start";
        this.f9913b = "health_monitor:count";
        this.f9914c = "health_monitor:value";
        this.f9915d = j10;
    }

    @WorkerThread
    private final long c() {
        return this.f9916e.o().getLong(this.f9912a, 0L);
    }

    @WorkerThread
    private final void d() {
        this.f9916e.h();
        long a10 = this.f9916e.f9432a.c().a();
        SharedPreferences.Editor edit = this.f9916e.o().edit();
        edit.remove(this.f9913b);
        edit.remove(this.f9914c);
        edit.putLong(this.f9912a, a10);
        edit.apply();
    }

    @WorkerThread
    public final Pair a() {
        long abs;
        this.f9916e.h();
        this.f9916e.h();
        long c10 = c();
        if (c10 == 0) {
            d();
            abs = 0;
        } else {
            abs = Math.abs(c10 - this.f9916e.f9432a.c().a());
        }
        long j10 = this.f9915d;
        if (abs < j10) {
            return null;
        }
        if (abs > j10 + j10) {
            d();
            return null;
        }
        String string = this.f9916e.o().getString(this.f9914c, null);
        long j11 = this.f9916e.o().getLong(this.f9913b, 0L);
        d();
        if (string != null && j11 > 0) {
            return new Pair(string, Long.valueOf(j11));
        }
        return x3.f9952x;
    }

    @WorkerThread
    public final void b(String str, long j10) {
        this.f9916e.h();
        if (c() == 0) {
            d();
        }
        if (str == null) {
            str = "";
        }
        long j11 = this.f9916e.o().getLong(this.f9913b, 0L);
        if (j11 <= 0) {
            SharedPreferences.Editor edit = this.f9916e.o().edit();
            edit.putString(this.f9914c, str);
            edit.putLong(this.f9913b, 1L);
            edit.apply();
            return;
        }
        long nextLong = this.f9916e.f9432a.N().u().nextLong();
        long j12 = j11 + 1;
        SharedPreferences.Editor edit2 = this.f9916e.o().edit();
        if ((nextLong & Long.MAX_VALUE) < Long.MAX_VALUE / j12) {
            edit2.putString(this.f9914c, str);
        }
        edit2.putLong(this.f9913b, j12);
        edit2.apply();
    }
}
