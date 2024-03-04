package com.google.android.gms.measurement.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class m4 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ l5 f9630a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ n4 f9631b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m4(n4 n4Var, l5 l5Var) {
        this.f9631b = n4Var;
        this.f9630a = l5Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        n4.e(this.f9631b, this.f9630a);
        this.f9631b.m(this.f9630a.f9607g);
    }
}
