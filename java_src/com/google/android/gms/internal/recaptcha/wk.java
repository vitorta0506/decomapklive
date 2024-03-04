package com.google.android.gms.internal.recaptcha;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
/* loaded from: classes2.dex */
public abstract class wk extends v implements b {
    public wk() {
        super("com.google.android.gms.recaptcha.internal.ICloseCallback");
    }

    @Override // com.google.android.gms.internal.recaptcha.v
    protected final boolean b(int i9, Parcel parcel, Parcel parcel2, int i10) throws RemoteException {
        if (i9 == 1) {
            P((Status) q0.a(parcel, Status.CREATOR), q0.d(parcel));
            return true;
        }
        return false;
    }
}
