package com.google.android.gms.internal.recaptcha;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.recaptcha.RecaptchaResultData;
/* loaded from: classes2.dex */
public abstract class c extends v implements d {
    public c() {
        super("com.google.android.gms.recaptcha.internal.IExecuteCallback");
    }

    @Override // com.google.android.gms.internal.recaptcha.v
    protected final boolean b(int i9, Parcel parcel, Parcel parcel2, int i10) throws RemoteException {
        if (i9 == 1) {
            r((Status) q0.a(parcel, Status.CREATOR), (RecaptchaResultData) q0.a(parcel, RecaptchaResultData.CREATOR));
        } else if (i9 != 2) {
            return false;
        } else {
            k((Status) q0.a(parcel, Status.CREATOR), (zzx) q0.a(parcel, zzx.CREATOR));
        }
        return true;
    }
}
