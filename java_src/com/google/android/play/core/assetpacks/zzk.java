package com.google.android.play.core.assetpacks;

import android.os.Bundle;
import android.os.ResultReceiver;
/* loaded from: classes2.dex */
final class zzk extends ResultReceiver {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ d5.o f10562a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ p3 f10563b;

    @Override // android.os.ResultReceiver
    public final void onReceiveResult(int i9, Bundle bundle) {
        r0 r0Var;
        if (i9 == 1) {
            this.f10562a.e(-1);
            r0Var = this.f10563b.f10368g;
            r0Var.a(null);
        } else if (i9 != 2) {
            this.f10562a.d(new AssetPackException(-100));
        } else {
            this.f10562a.e(0);
        }
    }
}
