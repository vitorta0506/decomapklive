package com.google.android.gms.internal.recaptcha;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.recaptcha.RecaptchaHandle;
/* loaded from: classes2.dex */
public abstract class e extends v implements f {
    public e() {
        super("com.google.android.gms.recaptcha.internal.IInitCallback");
    }

    @Override // com.google.android.gms.internal.recaptcha.v
    protected final boolean b(int i9, Parcel parcel, Parcel parcel2, int i10) throws RemoteException {
        if (i9 == 1) {
            z0((Status) q0.a(parcel, Status.CREATOR), (RecaptchaHandle) q0.a(parcel, RecaptchaHandle.CREATOR));
        } else if (i9 != 2) {
            return false;
        } else {
            m0((Status) q0.a(parcel, Status.CREATOR), (zzai) q0.a(parcel, zzai.CREATOR));
        }
        return true;
    }
}
