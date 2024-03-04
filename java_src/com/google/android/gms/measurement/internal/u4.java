package com.google.android.gms.measurement.internal;

import java.util.concurrent.Callable;
/* loaded from: classes2.dex */
final class u4 implements Callable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ String f9892a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ String f9893b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ String f9894c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ f5 f9895d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public u4(f5 f5Var, String str, String str2, String str3) {
        this.f9895d = f5Var;
        this.f9892a = str;
        this.f9893b = str2;
        this.f9894c = str3;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Object call() throws Exception {
        d9 d9Var;
        d9 d9Var2;
        d9Var = this.f9895d.f9403a;
        d9Var.e();
        d9Var2 = this.f9895d.f9403a;
        return d9Var2.W().a0(this.f9892a, this.f9893b, this.f9894c);
    }
}
