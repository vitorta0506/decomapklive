package com.google.android.play.core.assetpacks;

import android.os.Bundle;
import android.os.RemoteException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class j extends com.google.android.play.core.internal.h {

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ d5.o f10294b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ s f10295c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j(s sVar, d5.o oVar, d5.o oVar2) {
        super(oVar);
        this.f10295c = sVar;
        this.f10294b = oVar2;
    }

    @Override // com.google.android.play.core.internal.h
    protected final void b() {
        com.google.android.play.core.internal.g gVar;
        com.google.android.play.core.internal.s sVar;
        String str;
        Bundle h10;
        try {
            sVar = this.f10295c.f10415e;
            str = this.f10295c.f10411a;
            h10 = s.h();
            ((com.google.android.play.core.internal.w1) sVar.e()).Q(str, h10, new o(this.f10295c, this.f10294b));
        } catch (RemoteException e10) {
            gVar = s.f10409g;
            gVar.c(e10, "keepAlive", new Object[0]);
        }
    }
}
