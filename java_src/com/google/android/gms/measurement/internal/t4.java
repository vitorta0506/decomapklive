package com.google.android.gms.measurement.internal;

import java.util.concurrent.Callable;
/* loaded from: classes2.dex */
final class t4 implements Callable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ String f9868a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ String f9869b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ String f9870c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ f5 f9871d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public t4(f5 f5Var, String str, String str2, String str3) {
        this.f9871d = f5Var;
        this.f9868a = str;
        this.f9869b = str2;
        this.f9870c = str3;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Object call() throws Exception {
        d9 d9Var;
        d9 d9Var2;
        d9Var = this.f9871d.f9403a;
        d9Var.e();
        d9Var2 = this.f9871d.f9403a;
        return d9Var2.W().a0(this.f9868a, this.f9869b, this.f9870c);
    }
}
