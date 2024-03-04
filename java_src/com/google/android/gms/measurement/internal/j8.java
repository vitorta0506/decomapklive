package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import kotlinx.coroutines.DebugKt;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class j8 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final long f9549a;

    /* renamed from: b  reason: collision with root package name */
    final long f9550b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ k8 f9551c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j8(k8 k8Var, long j10, long j11) {
        this.f9551c = k8Var;
        this.f9549a = j10;
        this.f9550b = j11;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f9551c.f9581b.f9432a.a().z(new Runnable() { // from class: com.google.android.gms.measurement.internal.i8
            @Override // java.lang.Runnable
            public final void run() {
                j8 j8Var = j8.this;
                k8 k8Var = j8Var.f9551c;
                long j10 = j8Var.f9549a;
                long j11 = j8Var.f9550b;
                k8Var.f9581b.h();
                k8Var.f9581b.f9432a.b().q().a("Application going to the background");
                k8Var.f9581b.f9432a.F().f9967q.a(true);
                Bundle bundle = new Bundle();
                if (!k8Var.f9581b.f9432a.z().D()) {
                    k8Var.f9581b.f9735e.b(j11);
                    k8Var.f9581b.f9735e.d(false, false, j11);
                }
                k8Var.f9581b.f9432a.I().v(DebugKt.DEBUG_PROPERTY_VALUE_AUTO, "_ab", j10, bundle);
            }
        });
    }
}
