package com.google.android.gms.internal.recaptcha;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.recaptcha.RecaptchaHandle;
/* loaded from: classes2.dex */
public final class g extends a {
    /* JADX INFO: Access modifiers changed from: package-private */
    public g(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.recaptcha.internal.IRecaptchaService");
    }

    public final void E0(b bVar, RecaptchaHandle recaptchaHandle) throws RemoteException {
        Parcel f10 = f();
        q0.c(f10, bVar);
        q0.b(f10, recaptchaHandle);
        D0(4, f10);
    }

    public final void F0(d dVar, zzv zzvVar) throws RemoteException {
        Parcel f10 = f();
        q0.c(f10, dVar);
        q0.b(f10, zzvVar);
        D0(6, f10);
    }

    public final void G0(f fVar, zzag zzagVar) throws RemoteException {
        Parcel f10 = f();
        q0.c(f10, fVar);
        q0.b(f10, zzagVar);
        D0(5, f10);
    }
}
