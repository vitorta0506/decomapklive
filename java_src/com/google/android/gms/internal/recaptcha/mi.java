package com.google.android.gms.internal.recaptcha;

import java.io.IOException;
/* loaded from: classes2.dex */
final class mi extends ki<li, li> {
    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.recaptcha.ki
    public final /* bridge */ /* synthetic */ int a(li liVar) {
        return liVar.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.recaptcha.ki
    public final /* bridge */ /* synthetic */ int b(li liVar) {
        return liVar.b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.recaptcha.ki
    public final /* bridge */ /* synthetic */ li c(Object obj) {
        dg dgVar = (dg) obj;
        li liVar = dgVar.zzc;
        if (liVar == li.c()) {
            li e10 = li.e();
            dgVar.zzc = e10;
            return e10;
        }
        return liVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.recaptcha.ki
    public final /* bridge */ /* synthetic */ li d(Object obj) {
        return ((dg) obj).zzc;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.recaptcha.ki
    public final /* bridge */ /* synthetic */ li e(li liVar, li liVar2) {
        li liVar3 = liVar2;
        return liVar3.equals(li.c()) ? liVar : li.d(liVar, liVar3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.recaptcha.ki
    public final /* bridge */ /* synthetic */ li f() {
        return li.e();
    }

    @Override // com.google.android.gms.internal.recaptcha.ki
    final /* bridge */ /* synthetic */ li g(li liVar) {
        li liVar2 = liVar;
        liVar2.f();
        return liVar2;
    }

    @Override // com.google.android.gms.internal.recaptcha.ki
    final /* bridge */ /* synthetic */ void h(li liVar, int i9, int i10) {
        liVar.h((i9 << 3) | 5, Integer.valueOf(i10));
    }

    @Override // com.google.android.gms.internal.recaptcha.ki
    final /* bridge */ /* synthetic */ void i(li liVar, int i9, long j10) {
        liVar.h((i9 << 3) | 1, Long.valueOf(j10));
    }

    @Override // com.google.android.gms.internal.recaptcha.ki
    final /* bridge */ /* synthetic */ void j(li liVar, int i9, li liVar2) {
        liVar.h((i9 << 3) | 3, liVar2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.recaptcha.ki
    public final /* bridge */ /* synthetic */ void k(li liVar, int i9, zzpy zzpyVar) {
        liVar.h((i9 << 3) | 2, zzpyVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.recaptcha.ki
    public final /* bridge */ /* synthetic */ void l(li liVar, int i9, long j10) {
        liVar.h(i9 << 3, Long.valueOf(j10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.recaptcha.ki
    public final void m(Object obj) {
        ((dg) obj).zzc.f();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.recaptcha.ki
    public final /* bridge */ /* synthetic */ void n(Object obj, li liVar) {
        ((dg) obj).zzc = liVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.recaptcha.ki
    public final /* bridge */ /* synthetic */ void o(Object obj, li liVar) {
        ((dg) obj).zzc = liVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.recaptcha.ki
    public final /* bridge */ /* synthetic */ void p(li liVar, bj bjVar) throws IOException {
        liVar.i(bjVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.recaptcha.ki
    public final boolean r(sh shVar) {
        return false;
    }
}
