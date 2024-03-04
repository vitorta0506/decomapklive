package com.google.android.gms.measurement.internal;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
/* loaded from: classes2.dex */
public final class o3 extends t8 {
    public o3(d9 d9Var) {
        super(d9Var);
    }

    @Override // com.google.android.gms.measurement.internal.t8
    protected final boolean l() {
        return false;
    }

    public final boolean m() {
        i();
        ConnectivityManager connectivityManager = (ConnectivityManager) this.f9432a.f().getSystemService("connectivity");
        NetworkInfo networkInfo = null;
        if (connectivityManager != null) {
            try {
                networkInfo = connectivityManager.getActiveNetworkInfo();
            } catch (SecurityException unused) {
            }
        }
        return networkInfo != null && networkInfo.isConnected();
    }
}
