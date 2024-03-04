package com.google.android.play.core.assetpacks;

import android.os.Bundle;
import android.os.RemoteException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class g extends com.google.android.play.core.internal.h {

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ int f10222b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ String f10223c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ d5.o f10224d;

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ int f10225e;

    /* renamed from: f  reason: collision with root package name */
    final /* synthetic */ s f10226f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(s sVar, d5.o oVar, int i9, String str, d5.o oVar2, int i10) {
        super(oVar);
        this.f10226f = sVar;
        this.f10222b = i9;
        this.f10223c = str;
        this.f10224d = oVar2;
        this.f10225e = i10;
    }

    @Override // com.google.android.play.core.internal.h
    protected final void b() {
        com.google.android.play.core.internal.g gVar;
        com.google.android.play.core.internal.s sVar;
        String str;
        Bundle y10;
        Bundle h10;
        try {
            sVar = this.f10226f.f10414d;
            str = this.f10226f.f10411a;
            y10 = s.y(this.f10222b, this.f10223c);
            h10 = s.h();
            ((com.google.android.play.core.internal.w1) sVar.e()).X(str, y10, h10, new q(this.f10226f, this.f10224d, this.f10222b, this.f10223c, this.f10225e));
        } catch (RemoteException e10) {
            gVar = s.f10409g;
            gVar.c(e10, "notifyModuleCompleted", new Object[0]);
        }
    }
}
