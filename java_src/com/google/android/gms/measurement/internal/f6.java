package com.google.android.gms.measurement.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class f6 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Boolean f9406a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ m6 f9407b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f6(m6 m6Var, Boolean bool) {
        this.f9407b = m6Var;
        this.f9406a = bool;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f9407b.O(this.f9406a, true);
    }
}
