package com.google.android.play.core.assetpacks;

import android.os.Bundle;
import android.os.RemoteException;
/* loaded from: classes2.dex */
final class f extends com.google.android.play.core.internal.h {

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ int f10203b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ String f10204c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ String f10205d;

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ int f10206e;

    /* renamed from: f  reason: collision with root package name */
    final /* synthetic */ d5.o f10207f;

    /* renamed from: g  reason: collision with root package name */
    final /* synthetic */ s f10208g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(s sVar, d5.o oVar, int i9, String str, String str2, int i10, d5.o oVar2) {
        super(oVar);
        this.f10208g = sVar;
        this.f10203b = i9;
        this.f10204c = str;
        this.f10205d = str2;
        this.f10206e = i10;
        this.f10207f = oVar2;
    }

    @Override // com.google.android.play.core.internal.h
    protected final void b() {
        com.google.android.play.core.internal.g gVar;
        com.google.android.play.core.internal.s sVar;
        String str;
        Bundle h10;
        try {
            sVar = this.f10208g.f10414d;
            str = this.f10208g.f10411a;
            Bundle l10 = s.l(this.f10203b, this.f10204c, this.f10205d, this.f10206e);
            h10 = s.h();
            ((com.google.android.play.core.internal.w1) sVar.e()).G(str, l10, h10, new p(this.f10208g, this.f10207f));
        } catch (RemoteException e10) {
            gVar = s.f10409g;
            gVar.c(e10, "notifyChunkTransferred", new Object[0]);
        }
    }
}
