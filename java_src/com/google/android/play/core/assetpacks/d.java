package com.google.android.play.core.assetpacks;

import android.os.Bundle;
import android.os.RemoteException;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
final class d extends com.google.android.play.core.internal.h {

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ List f10176b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ d5.o f10177c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ s f10178d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(s sVar, d5.o oVar, List list, d5.o oVar2) {
        super(oVar);
        this.f10178d = sVar;
        this.f10176b = list;
        this.f10177c = oVar2;
    }

    @Override // com.google.android.play.core.internal.h
    protected final void b() {
        com.google.android.play.core.internal.g gVar;
        com.google.android.play.core.internal.s sVar;
        String str;
        Bundle h10;
        ArrayList u10 = s.u(this.f10176b);
        try {
            sVar = this.f10178d.f10414d;
            str = this.f10178d.f10411a;
            h10 = s.h();
            ((com.google.android.play.core.internal.w1) sVar.e()).v0(str, u10, h10, new l(this.f10178d, this.f10177c));
        } catch (RemoteException e10) {
            gVar = s.f10409g;
            gVar.c(e10, "cancelDownloads(%s)", this.f10176b);
        }
    }
}
