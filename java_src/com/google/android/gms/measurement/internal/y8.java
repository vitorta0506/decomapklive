package com.google.android.gms.measurement.internal;

import java.util.concurrent.Callable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class y8 implements Callable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ zzq f10021a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ d9 f10022b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public y8(d9 d9Var, zzq zzqVar) {
        this.f10022b = d9Var;
        this.f10021a = zzqVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Object call() throws Exception {
        p4.a V = this.f10022b.V((String) com.google.android.gms.common.internal.p.j(this.f10021a.zza));
        zzah zzahVar = zzah.ANALYTICS_STORAGE;
        if (V.i(zzahVar) && p4.a.b(this.f10021a.zzv).i(zzahVar)) {
            return this.f10022b.S(this.f10021a).e0();
        }
        this.f10022b.b().v().a("Analytics storage consent denied. Returning null app instance id");
        return null;
    }
}
