package com.google.android.gms.internal.play_billing;

import android.os.IBinder;
import android.os.IInterface;
/* loaded from: classes2.dex */
public abstract class c extends f implements d {
    public static d b(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.android.vending.billing.IInAppBillingService");
        if (queryLocalInterface instanceof d) {
            return (d) queryLocalInterface;
        }
        return new b(iBinder);
    }
}
