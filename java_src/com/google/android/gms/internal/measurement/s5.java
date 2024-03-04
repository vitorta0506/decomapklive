package com.google.android.gms.internal.measurement;

import android.database.ContentObserver;
import android.os.Handler;
import java.util.concurrent.atomic.AtomicBoolean;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class s5 extends ContentObserver {
    /* JADX INFO: Access modifiers changed from: package-private */
    public s5(Handler handler) {
        super(null);
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z10) {
        AtomicBoolean atomicBoolean;
        atomicBoolean = t5.f8342e;
        atomicBoolean.set(true);
    }
}
