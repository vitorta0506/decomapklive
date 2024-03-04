package com.google.android.gms.internal.recaptcha;

import com.google.android.gms.common.api.Status;
/* loaded from: classes2.dex */
final class u extends wk {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ t4.h f9074a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public u(w wVar, t4.h hVar) {
        this.f9074a = hVar;
    }

    @Override // com.google.android.gms.internal.recaptcha.b
    public final void P(Status status, boolean z10) {
        v3.m.a(status, Boolean.valueOf(z10), this.f9074a);
    }
}
