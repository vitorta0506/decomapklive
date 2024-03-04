package com.google.android.play.core.review;

import android.os.Bundle;
import android.os.RemoteException;
import d5.o;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class f extends com.google.android.play.core.internal.h {

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ o f10636b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ i f10637c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(i iVar, o oVar, o oVar2) {
        super(oVar);
        this.f10637c = iVar;
        this.f10636b = oVar2;
    }

    @Override // com.google.android.play.core.internal.h
    protected final void b() {
        com.google.android.play.core.internal.g gVar;
        String str;
        String str2;
        String str3;
        try {
            str2 = this.f10637c.f10644b;
            Bundle a10 = v4.a.a("review");
            i iVar = this.f10637c;
            o oVar = this.f10636b;
            str3 = iVar.f10644b;
            ((com.google.android.play.core.internal.d) this.f10637c.f10643a.e()).W(str2, a10, new h(iVar, oVar, str3));
        } catch (RemoteException e10) {
            gVar = i.f10642c;
            str = this.f10637c.f10644b;
            gVar.c(e10, "error requesting in-app review for %s", str);
            this.f10636b.d(new RuntimeException(e10));
        }
    }
}
