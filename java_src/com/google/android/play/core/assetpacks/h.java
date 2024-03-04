package com.google.android.play.core.assetpacks;

import android.os.Bundle;
import android.os.RemoteException;
/* loaded from: classes2.dex */
final class h extends com.google.android.play.core.internal.h {

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ int f10251b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ d5.o f10252c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ s f10253d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(s sVar, d5.o oVar, int i9, d5.o oVar2) {
        super(oVar);
        this.f10253d = sVar;
        this.f10251b = i9;
        this.f10252c = oVar2;
    }

    @Override // com.google.android.play.core.internal.h
    protected final void b() {
        com.google.android.play.core.internal.g gVar;
        com.google.android.play.core.internal.s sVar;
        String str;
        Bundle i9;
        Bundle h10;
        try {
            sVar = this.f10253d.f10414d;
            str = this.f10253d.f10411a;
            i9 = s.i(this.f10251b);
            h10 = s.h();
            ((com.google.android.play.core.internal.w1) sVar.e()).R(str, i9, h10, new r(this.f10253d, this.f10252c));
        } catch (RemoteException e10) {
            gVar = s.f10409g;
            gVar.c(e10, "notifySessionFailed", new Object[0]);
        }
    }
}
