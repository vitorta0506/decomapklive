package com.google.android.play.core.assetpacks;

import android.os.RemoteException;
import java.util.Map;
/* loaded from: classes2.dex */
final class e extends com.google.android.play.core.internal.h {

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ Map f10191b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ d5.o f10192c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ s f10193d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(s sVar, d5.o oVar, Map map, d5.o oVar2) {
        super(oVar);
        this.f10193d = sVar;
        this.f10191b = map;
        this.f10192c = oVar2;
    }

    @Override // com.google.android.play.core.internal.h
    protected final void b() {
        com.google.android.play.core.internal.g gVar;
        com.google.android.play.core.internal.s sVar;
        String str;
        try {
            sVar = this.f10193d.f10414d;
            str = this.f10193d.f10411a;
            ((com.google.android.play.core.internal.w1) sVar.e()).k0(str, s.o(this.f10191b), new n(this.f10193d, this.f10192c));
        } catch (RemoteException e10) {
            gVar = s.f10409g;
            gVar.c(e10, "syncPacks", new Object[0]);
            this.f10192c.d(new RuntimeException(e10));
        }
    }
}
