package com.google.android.play.core.appupdate;

import android.os.Bundle;
import android.os.ResultReceiver;
import d5.o;
/* loaded from: classes2.dex */
final class zzd extends ResultReceiver {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ o f10135a;

    @Override // android.os.ResultReceiver
    public final void onReceiveResult(int i9, Bundle bundle) {
        if (i9 == 1) {
            this.f10135a.e(-1);
        } else if (i9 != 2) {
            this.f10135a.e(1);
        } else {
            this.f10135a.e(0);
        }
    }
}
