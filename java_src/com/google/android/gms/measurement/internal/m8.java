package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import androidx.annotation.WorkerThread;
import com.google.android.gms.internal.measurement.sc;
import kotlinx.coroutines.DebugKt;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class m8 {

    /* renamed from: a  reason: collision with root package name */
    protected long f9651a;

    /* renamed from: b  reason: collision with root package name */
    protected long f9652b;

    /* renamed from: c  reason: collision with root package name */
    private final n f9653c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ o8 f9654d;

    public m8(o8 o8Var) {
        this.f9654d = o8Var;
        this.f9653c = new l8(this, o8Var.f9432a);
        long b10 = o8Var.f9432a.c().b();
        this.f9651a = b10;
        this.f9652b = b10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a() {
        this.f9653c.b();
        this.f9651a = 0L;
        this.f9652b = 0L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final void b(long j10) {
        this.f9653c.b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final void c(long j10) {
        this.f9654d.h();
        this.f9653c.b();
        this.f9651a = j10;
        this.f9652b = j10;
    }

    @WorkerThread
    public final boolean d(boolean z10, boolean z11, long j10) {
        this.f9654d.h();
        this.f9654d.i();
        sc.b();
        if (this.f9654d.f9432a.z().B(null, z2.f10037f0)) {
            if (this.f9654d.f9432a.o()) {
                this.f9654d.f9432a.F().f9965o.b(this.f9654d.f9432a.c().a());
            }
        } else {
            this.f9654d.f9432a.F().f9965o.b(this.f9654d.f9432a.c().a());
        }
        long j11 = j10 - this.f9651a;
        if (!z10 && j11 < 1000) {
            this.f9654d.f9432a.b().v().b("Screen exposed for less than 1000 ms. Event not sent. time", Long.valueOf(j11));
            return false;
        }
        if (!z11) {
            j11 = j10 - this.f9652b;
            this.f9652b = j10;
        }
        this.f9654d.f9432a.b().v().b("Recording user engagement, ms", Long.valueOf(j11));
        Bundle bundle = new Bundle();
        bundle.putLong("_et", j11);
        k9.y(this.f9654d.f9432a.K().s(!this.f9654d.f9432a.z().D()), bundle, true);
        if (!z11) {
            this.f9654d.f9432a.I().u(DebugKt.DEBUG_PROPERTY_VALUE_AUTO, "_e", bundle);
        }
        this.f9651a = j10;
        this.f9653c.b();
        this.f9653c.d(3600000L);
        return true;
    }
}
