package com.google.android.gms.internal.measurement;
/* loaded from: classes2.dex */
final class g0 implements h0 {

    /* renamed from: a  reason: collision with root package name */
    private final t4 f8090a;

    /* renamed from: b  reason: collision with root package name */
    private final String f8091b;

    public g0(t4 t4Var, String str) {
        this.f8090a = t4Var;
        this.f8091b = str;
    }

    @Override // com.google.android.gms.internal.measurement.h0
    public final t4 a(q qVar) {
        t4 a10 = this.f8090a.a();
        a10.e(this.f8091b, qVar);
        return a10;
    }
}
