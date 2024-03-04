package com.google.android.gms.measurement.internal;

import java.util.concurrent.Callable;
/* loaded from: classes2.dex */
final class c5 implements Callable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ String f9324a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ f5 f9325b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c5(f5 f5Var, String str) {
        this.f9325b = f5Var;
        this.f9324a = str;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Object call() throws Exception {
        d9 d9Var;
        d9 d9Var2;
        d9Var = this.f9325b.f9403a;
        d9Var.e();
        d9Var2 = this.f9325b.f9403a;
        return d9Var2.W().c0(this.f9324a);
    }
}
