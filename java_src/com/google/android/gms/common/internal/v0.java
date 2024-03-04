package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.IInterface;
/* loaded from: classes2.dex */
public abstract class v0 extends com.google.android.gms.internal.common.k implements w0 {
    public static w0 f(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IGoogleCertificatesApi");
        return queryLocalInterface instanceof w0 ? (w0) queryLocalInterface : new u0(iBinder);
    }
}
