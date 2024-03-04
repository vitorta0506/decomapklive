package com.google.android.play.core.assetpacks;

import android.os.Bundle;
import android.os.RemoteException;
/* loaded from: classes2.dex */
final class i extends com.google.android.play.core.internal.h {

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ int f10274b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ String f10275c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ String f10276d;

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ int f10277e;

    /* renamed from: f  reason: collision with root package name */
    final /* synthetic */ d5.o f10278f;

    /* renamed from: g  reason: collision with root package name */
    final /* synthetic */ s f10279g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(s sVar, d5.o oVar, int i9, String str, String str2, int i10, d5.o oVar2) {
        super(oVar);
        this.f10279g = sVar;
        this.f10274b = i9;
        this.f10275c = str;
        this.f10276d = str2;
        this.f10277e = i10;
        this.f10278f = oVar2;
    }

    @Override // com.google.android.play.core.internal.h
    protected final void b() {
        com.google.android.play.core.internal.g gVar;
        com.google.android.play.core.internal.s sVar;
        String str;
        Bundle h10;
        try {
            sVar = this.f10279g.f10414d;
            str = this.f10279g.f10411a;
            Bundle l10 = s.l(this.f10274b, this.f10275c, this.f10276d, this.f10277e);
            h10 = s.h();
            ((com.google.android.play.core.internal.w1) sVar.e()).p0(str, l10, h10, new m(this.f10279g, this.f10278f));
        } catch (RemoteException e10) {
            gVar = s.f10409g;
            gVar.b("getChunkFileDescriptor(%s, %s, %d, session=%d)", this.f10275c, this.f10276d, Integer.valueOf(this.f10277e), Integer.valueOf(this.f10274b));
            this.f10278f.d(new RuntimeException(e10));
        }
    }
}
