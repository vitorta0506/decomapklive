package com.google.android.gms.measurement.internal;

import android.os.Handler;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public abstract class n {

    /* renamed from: d  reason: collision with root package name */
    private static volatile Handler f9657d;

    /* renamed from: a  reason: collision with root package name */
    private final i5 f9658a;

    /* renamed from: b  reason: collision with root package name */
    private final Runnable f9659b;

    /* renamed from: c  reason: collision with root package name */
    private volatile long f9660c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public n(i5 i5Var) {
        com.google.android.gms.common.internal.p.j(i5Var);
        this.f9658a = i5Var;
        this.f9659b = new m(this, i5Var);
    }

    private final Handler f() {
        Handler handler;
        if (f9657d != null) {
            return f9657d;
        }
        synchronized (n.class) {
            if (f9657d == null) {
                f9657d = new com.google.android.gms.internal.measurement.z0(this.f9658a.f().getMainLooper());
            }
            handler = f9657d;
        }
        return handler;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b() {
        this.f9660c = 0L;
        f().removeCallbacks(this.f9659b);
    }

    public abstract void c();

    public final void d(long j10) {
        b();
        if (j10 >= 0) {
            this.f9660c = this.f9658a.c().a();
            if (f().postDelayed(this.f9659b, j10)) {
                return;
            }
            this.f9658a.b().r().b("Failed to schedule delayed post. time", Long.valueOf(j10));
        }
    }

    public final boolean e() {
        return this.f9660c != 0;
    }
}
