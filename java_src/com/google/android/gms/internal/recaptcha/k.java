package com.google.android.gms.internal.recaptcha;

import androidx.annotation.Nullable;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
/* loaded from: classes2.dex */
final class k extends xf {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ t4.h f8801a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(n nVar, t4.h hVar) {
        this.f8801a = hVar;
    }

    @Override // com.google.android.gms.internal.recaptcha.f
    public final void m0(Status status, @Nullable zzai zzaiVar) {
        if (zzaiVar == null) {
            this.f8801a.b(new ApiException(status));
        } else {
            this.f8801a.c(zzaiVar.I());
        }
    }
}
