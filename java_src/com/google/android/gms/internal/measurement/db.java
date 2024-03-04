package com.google.android.gms.internal.measurement;

import java.io.IOException;
/* loaded from: classes2.dex */
final class db extends bb {
    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.bb
    public final /* synthetic */ int a(Object obj) {
        return ((cb) obj).a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.bb
    public final /* synthetic */ int b(Object obj) {
        return ((cb) obj).b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.bb
    public final /* synthetic */ Object c(Object obj) {
        return ((x8) obj).zzc;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.bb
    public final /* bridge */ /* synthetic */ Object d(Object obj, Object obj2) {
        cb cbVar = (cb) obj2;
        return cbVar.equals(cb.c()) ? obj : cb.d((cb) obj, cbVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.bb
    public final /* synthetic */ Object e() {
        return cb.e();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.bb
    public final /* bridge */ /* synthetic */ void f(Object obj, int i9, long j10) {
        ((cb) obj).h(i9 << 3, Long.valueOf(j10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.bb
    public final void g(Object obj) {
        ((x8) obj).zzc.f();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.bb
    public final /* synthetic */ void h(Object obj, Object obj2) {
        ((x8) obj).zzc = (cb) obj2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.bb
    public final /* synthetic */ void i(Object obj, sb sbVar) throws IOException {
        ((cb) obj).i(sbVar);
    }
}
