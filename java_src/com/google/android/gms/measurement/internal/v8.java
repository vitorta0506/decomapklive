package com.google.android.gms.measurement.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class v8 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ f9 f9924a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ d9 f9925b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public v8(d9 d9Var, f9 f9Var) {
        this.f9925b = d9Var;
        this.f9924a = f9Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        d9.k0(this.f9925b, this.f9924a);
        this.f9925b.x();
    }
}
