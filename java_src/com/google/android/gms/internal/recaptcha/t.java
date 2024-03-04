package com.google.android.gms.internal.recaptcha;

import androidx.annotation.Nullable;
import com.google.android.gms.common.api.Status;
/* loaded from: classes2.dex */
final class t extends ti {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ t4.h f9050a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public t(w wVar, t4.h hVar) {
        this.f9050a = hVar;
    }

    @Override // com.google.android.gms.internal.recaptcha.d
    public final void k(Status status, @Nullable zzx zzxVar) {
        v3.m.a(status, zzxVar == null ? null : zzxVar.I(), this.f9050a);
    }
}
