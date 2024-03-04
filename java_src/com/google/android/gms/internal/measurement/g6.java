package com.google.android.gms.internal.measurement;

import android.database.ContentObserver;
import android.os.Handler;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class g6 extends ContentObserver {
    /* JADX INFO: Access modifiers changed from: package-private */
    public g6(h6 h6Var, Handler handler) {
        super(null);
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z10) {
        w6.d();
    }
}
