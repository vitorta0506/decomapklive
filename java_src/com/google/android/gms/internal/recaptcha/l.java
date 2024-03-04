package com.google.android.gms.internal.recaptcha;

import androidx.annotation.Nullable;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
/* loaded from: classes2.dex */
final class l extends ti {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ t4.h f8827a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(n nVar, t4.h hVar) {
        this.f8827a = hVar;
    }

    @Override // com.google.android.gms.internal.recaptcha.d
    public final void k(Status status, @Nullable zzx zzxVar) {
        if (zzxVar == null) {
            this.f8827a.b(new ApiException(status));
        } else {
            this.f8827a.c(zzxVar.I());
        }
    }
}
