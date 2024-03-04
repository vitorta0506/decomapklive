package com.google.android.gms.internal.recaptcha;

import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
/* loaded from: classes2.dex */
final class m extends wk {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ t4.h f8847a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(n nVar, t4.h hVar) {
        this.f8847a = hVar;
    }

    @Override // com.google.android.gms.internal.recaptcha.b
    public final void P(Status status, boolean z10) {
        if (status.R()) {
            this.f8847a.c(Boolean.valueOf(z10));
        } else {
            this.f8847a.b(new ApiException(status));
        }
    }
}
