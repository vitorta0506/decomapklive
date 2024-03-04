package com.google.android.gms.measurement.internal;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.WorkerThread;
/* loaded from: classes2.dex */
public final class o8 extends u3 {

    /* renamed from: c  reason: collision with root package name */
    private Handler f9733c;

    /* renamed from: d  reason: collision with root package name */
    protected final n8 f9734d;

    /* renamed from: e  reason: collision with root package name */
    protected final m8 f9735e;

    /* renamed from: f  reason: collision with root package name */
    protected final k8 f9736f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public o8(n4 n4Var) {
        super(n4Var);
        this.f9734d = new n8(this);
        this.f9735e = new m8(this);
        this.f9736f = new k8(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ void q(o8 o8Var, long j10) {
        o8Var.h();
        o8Var.s();
        o8Var.f9432a.b().v().b("Activity paused, time", Long.valueOf(j10));
        o8Var.f9736f.a(j10);
        if (o8Var.f9432a.z().D()) {
            o8Var.f9735e.b(j10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ void r(o8 o8Var, long j10) {
        o8Var.h();
        o8Var.s();
        o8Var.f9432a.b().v().b("Activity resumed, time", Long.valueOf(j10));
        if (o8Var.f9432a.z().D() || o8Var.f9432a.F().f9967q.b()) {
            o8Var.f9735e.c(j10);
        }
        o8Var.f9736f.b();
        n8 n8Var = o8Var.f9734d;
        n8Var.f9708a.h();
        if (n8Var.f9708a.f9432a.o()) {
            n8Var.b(n8Var.f9708a.f9432a.c().a(), false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    public final void s() {
        h();
        if (this.f9733c == null) {
            this.f9733c = new com.google.android.gms.internal.measurement.z0(Looper.getMainLooper());
        }
    }

    @Override // com.google.android.gms.measurement.internal.u3
    protected final boolean n() {
        return false;
    }
}
