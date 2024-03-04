package com.google.android.play.core.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2.dex */
public final class b extends r1 implements d {
    /* JADX INFO: Access modifiers changed from: package-private */
    public b(IBinder iBinder) {
        super(iBinder, "com.google.android.play.core.inappreview.protocol.IInAppReviewService");
    }

    @Override // com.google.android.play.core.internal.d
    public final void W(String str, Bundle bundle, f fVar) throws RemoteException {
        Parcel f10 = f();
        f10.writeString(str);
        t1.b(f10, bundle);
        t1.c(f10, fVar);
        D0(2, f10);
    }
}
