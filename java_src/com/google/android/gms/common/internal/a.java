package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Binder;
import android.os.RemoteException;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.i;
/* loaded from: classes2.dex */
public class a extends i.a {
    @Nullable
    public static Account D0(@NonNull i iVar) {
        Account account = null;
        if (iVar != null) {
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                try {
                    account = iVar.D();
                } catch (RemoteException unused) {
                    Log.w("AccountAccessor", "Remote account accessor probably died");
                }
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }
        return account;
    }
}
