package com.google.android.gms.internal.measurement;

import android.os.IBinder;
import android.os.IInterface;
/* loaded from: classes2.dex */
public abstract class r0 extends o0 implements s0 {
    public static s0 f(IBinder iBinder) {
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.finsky.externalreferrer.IGetInstallReferrerService");
        return queryLocalInterface instanceof s0 ? (s0) queryLocalInterface : new q0(iBinder);
    }
}
