package com.google.firebase.installations.remote;

import androidx.annotation.GuardedBy;
import com.google.firebase.installations.h;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
class d {

    /* renamed from: d  reason: collision with root package name */
    private static final long f13953d = TimeUnit.HOURS.toMillis(24);

    /* renamed from: e  reason: collision with root package name */
    private static final long f13954e = TimeUnit.MINUTES.toMillis(30);

    /* renamed from: a  reason: collision with root package name */
    private final h f13955a = h.c();
    @GuardedBy("this")

    /* renamed from: b  reason: collision with root package name */
    private long f13956b;
    @GuardedBy("this")

    /* renamed from: c  reason: collision with root package name */
    private int f13957c;

    private synchronized long a(int i9) {
        if (!c(i9)) {
            return f13953d;
        }
        return (long) Math.min(Math.pow(2.0d, this.f13957c) + this.f13955a.e(), f13954e);
    }

    private static boolean c(int i9) {
        return i9 == 429 || (i9 >= 500 && i9 < 600);
    }

    private static boolean d(int i9) {
        return (i9 >= 200 && i9 < 300) || i9 == 401 || i9 == 404;
    }

    private synchronized void e() {
        this.f13957c = 0;
    }

    public synchronized boolean b() {
        boolean z10;
        if (this.f13957c != 0) {
            z10 = this.f13955a.a() > this.f13956b;
        }
        return z10;
    }

    public synchronized void f(int i9) {
        if (d(i9)) {
            e();
            return;
        }
        this.f13957c++;
        this.f13956b = this.f13955a.a() + a(i9);
    }
}
