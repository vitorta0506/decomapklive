package com.google.android.play.core.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2.dex */
public abstract class e extends s1 implements f {
    public e() {
        super("com.google.android.play.core.inappreview.protocol.IInAppReviewServiceCallback");
    }

    @Override // com.google.android.play.core.internal.s1
    protected final boolean b(int i9, Parcel parcel, Parcel parcel2, int i10) throws RemoteException {
        if (i9 == 2) {
            A0((Bundle) t1.a(parcel, Bundle.CREATOR));
            return true;
        }
        return false;
    }
}
