package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import androidx.annotation.NonNull;
/* loaded from: classes2.dex */
public interface i extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class a extends com.google.android.gms.internal.common.k implements i {
        @NonNull
        public static i f(@NonNull IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IAccountAccessor");
            return queryLocalInterface instanceof i ? (i) queryLocalInterface : new u1(iBinder);
        }
    }

    @NonNull
    Account D() throws RemoteException;
}
