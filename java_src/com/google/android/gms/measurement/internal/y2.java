package com.google.android.gms.measurement.internal;

import androidx.annotation.GuardedBy;
/* loaded from: classes2.dex */
public final class y2 {

    /* renamed from: h  reason: collision with root package name */
    private static final Object f9988h = new Object();

    /* renamed from: a  reason: collision with root package name */
    private final String f9989a;

    /* renamed from: b  reason: collision with root package name */
    private final v2 f9990b;

    /* renamed from: c  reason: collision with root package name */
    private final Object f9991c;

    /* renamed from: d  reason: collision with root package name */
    private final Object f9992d;

    /* renamed from: e  reason: collision with root package name */
    private final Object f9993e = new Object();
    @GuardedBy("overrideLock")

    /* renamed from: f  reason: collision with root package name */
    private volatile Object f9994f = null;
    @GuardedBy("cachingLock")

    /* renamed from: g  reason: collision with root package name */
    private volatile Object f9995g = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ y2(String str, Object obj, Object obj2, v2 v2Var, p4.c cVar) {
        this.f9989a = str;
        this.f9991c = obj;
        this.f9992d = obj2;
        this.f9990b = v2Var;
    }

    public final Object a(Object obj) {
        synchronized (this.f9993e) {
        }
        if (obj != null) {
            return obj;
        }
        if (w2.f9932a == null) {
            return this.f9991c;
        }
        synchronized (f9988h) {
            if (c.a()) {
                return this.f9995g == null ? this.f9991c : this.f9995g;
            }
            try {
                for (y2 y2Var : z2.b()) {
                    if (!c.a()) {
                        Object obj2 = null;
                        try {
                            v2 v2Var = y2Var.f9990b;
                            if (v2Var != null) {
                                obj2 = v2Var.zza();
                            }
                        } catch (IllegalStateException unused) {
                        }
                        synchronized (f9988h) {
                            y2Var.f9995g = obj2;
                        }
                    } else {
                        throw new IllegalStateException("Refreshing flag cache must be done on a worker thread.");
                    }
                }
            } catch (SecurityException unused2) {
            }
            v2 v2Var2 = this.f9990b;
            if (v2Var2 == null) {
                return this.f9991c;
            }
            try {
                return v2Var2.zza();
            } catch (IllegalStateException unused3) {
                return this.f9991c;
            } catch (SecurityException unused4) {
                return this.f9991c;
            }
        }
    }

    public final String b() {
        return this.f9989a;
    }
}
