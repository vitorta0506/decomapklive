package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2.dex */
public final class u1 extends com.google.android.gms.internal.common.a implements i {
    /* JADX INFO: Access modifiers changed from: package-private */
    public u1(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.IAccountAccessor");
    }

    @Override // com.google.android.gms.common.internal.i
    public final Account D() throws RemoteException {
        Parcel b10 = b(2, f());
        Account account = (Account) com.google.android.gms.internal.common.l.a(b10, Account.CREATOR);
        b10.recycle();
        return account;
    }
}
