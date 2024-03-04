package com.google.android.gms.measurement.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class q8 extends n {

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ r8 f9787e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q8(r8 r8Var, i5 i5Var) {
        super(i5Var);
        this.f9787e = r8Var;
    }

    @Override // com.google.android.gms.measurement.internal.n
    public final void c() {
        this.f9787e.m();
        this.f9787e.f9432a.b().v().a("Starting upload from DelayedRunnable");
        this.f9787e.f9855b.C();
    }
}
