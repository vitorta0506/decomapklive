package com.google.android.play.core.review;

import android.os.Bundle;
import android.os.Handler;
import android.os.ResultReceiver;
import d5.o;
/* loaded from: classes2.dex */
final class zzc extends ResultReceiver {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ o f10645a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzc(d dVar, Handler handler, o oVar) {
        super(handler);
        this.f10645a = oVar;
    }

    @Override // android.os.ResultReceiver
    public final void onReceiveResult(int i9, Bundle bundle) {
        this.f10645a.e(null);
    }
}
