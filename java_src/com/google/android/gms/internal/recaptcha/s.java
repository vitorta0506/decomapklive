package com.google.android.gms.internal.recaptcha;

import androidx.annotation.Nullable;
import com.google.android.gms.common.api.Status;
/* loaded from: classes2.dex */
final class s extends xf {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ t4.h f9028a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public s(w wVar, t4.h hVar) {
        this.f9028a = hVar;
    }

    @Override // com.google.android.gms.internal.recaptcha.f
    public final void m0(Status status, @Nullable zzai zzaiVar) {
        v3.m.a(status, zzaiVar == null ? null : zzaiVar.I(), this.f9028a);
    }
}
