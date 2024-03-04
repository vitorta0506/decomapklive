package com.google.android.gms.measurement.internal;

import java.util.concurrent.Callable;
/* loaded from: classes2.dex */
final class s4 implements Callable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ String f9835a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ String f9836b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ String f9837c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ f5 f9838d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public s4(f5 f5Var, String str, String str2, String str3) {
        this.f9838d = f5Var;
        this.f9835a = str;
        this.f9836b = str2;
        this.f9837c = str3;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Object call() throws Exception {
        d9 d9Var;
        d9 d9Var2;
        d9Var = this.f9838d.f9403a;
        d9Var.e();
        d9Var2 = this.f9838d.f9403a;
        return d9Var2.W().d0(this.f9835a, this.f9836b, this.f9837c);
    }
}
