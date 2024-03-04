package com.google.android.gms.internal.measurement;

import android.os.Bundle;
/* loaded from: classes2.dex */
final class m2 extends j1 {

    /* renamed from: a  reason: collision with root package name */
    private final p4.t f8194a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m2(p4.t tVar) {
        this.f8194a = tVar;
    }

    @Override // com.google.android.gms.internal.measurement.k1
    public final int c() {
        return System.identityHashCode(this.f8194a);
    }

    @Override // com.google.android.gms.internal.measurement.k1
    public final void g(String str, String str2, Bundle bundle, long j10) {
        this.f8194a.a(str, str2, bundle, j10);
    }
}
