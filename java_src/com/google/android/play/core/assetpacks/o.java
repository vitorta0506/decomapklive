package com.google.android.play.core.assetpacks;

import android.os.Bundle;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes2.dex */
final class o extends k {

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ s f10349c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o(s sVar, d5.o oVar) {
        super(sVar, oVar);
        this.f10349c = sVar;
    }

    @Override // com.google.android.play.core.assetpacks.k, com.google.android.play.core.internal.y1
    public final void S(Bundle bundle, Bundle bundle2) {
        AtomicBoolean atomicBoolean;
        com.google.android.play.core.internal.g gVar;
        super.S(bundle, bundle2);
        atomicBoolean = this.f10349c.f10416f;
        if (!atomicBoolean.compareAndSet(true, false)) {
            gVar = s.f10409g;
            gVar.e("Expected keepingAlive to be true, but was false.", new Object[0]);
        }
        if (bundle.getBoolean("keep_alive")) {
            this.f10349c.b();
        }
    }

    @Override // com.google.android.play.core.assetpacks.k, com.google.android.play.core.internal.y1
    public final void a(Bundle bundle) {
        com.google.android.play.core.internal.s sVar;
        com.google.android.play.core.internal.g gVar;
        sVar = this.f10349c.f10415e;
        sVar.s(this.f10310a);
        int i9 = bundle.getInt("error_code");
        gVar = s.f10409g;
        gVar.b("onError(%d)", Integer.valueOf(i9));
        this.f10310a.d(new AssetPackException(i9));
    }
}
