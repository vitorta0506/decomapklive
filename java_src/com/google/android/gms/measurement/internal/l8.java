package com.google.android.gms.measurement.internal;

import androidx.annotation.WorkerThread;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class l8 extends n {

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ m8 f9614e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l8(m8 m8Var, i5 i5Var) {
        super(i5Var);
        this.f9614e = m8Var;
    }

    @Override // com.google.android.gms.measurement.internal.n
    @WorkerThread
    public final void c() {
        m8 m8Var = this.f9614e;
        m8Var.f9654d.h();
        m8Var.d(false, false, m8Var.f9654d.f9432a.c().b());
        m8Var.f9654d.f9432a.y().n(m8Var.f9654d.f9432a.c().b());
    }
}
