package com.google.android.gms.measurement.internal;

import java.util.concurrent.Callable;
/* loaded from: classes2.dex */
final class r4 implements Callable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ String f9799a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ String f9800b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ String f9801c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ f5 f9802d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public r4(f5 f5Var, String str, String str2, String str3) {
        this.f9802d = f5Var;
        this.f9799a = str;
        this.f9800b = str2;
        this.f9801c = str3;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Object call() throws Exception {
        d9 d9Var;
        d9 d9Var2;
        d9Var = this.f9802d.f9403a;
        d9Var.e();
        d9Var2 = this.f9802d.f9403a;
        return d9Var2.W().d0(this.f9799a, this.f9800b, this.f9801c);
    }
}
