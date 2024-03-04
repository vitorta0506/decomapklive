package com.google.android.gms.internal.recaptcha;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class mc implements cc {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ pc f8874a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ cc f8875b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public mc(rc rcVar, pc pcVar, cc ccVar) {
        this.f8874a = pcVar;
        this.f8875b = ccVar;
    }

    public final String toString() {
        return this.f8875b.toString();
    }

    @Override // com.google.android.gms.internal.recaptcha.cc
    public final nd zza() throws Exception {
        if (!this.f8874a.compareAndSet(oc.NOT_RUN, oc.STARTED)) {
            return new gd();
        }
        return this.f8875b.zza();
    }
}
