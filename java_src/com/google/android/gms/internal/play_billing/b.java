package com.google.android.gms.internal.play_billing;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2.dex */
public final class b extends e implements d {
    /* JADX INFO: Access modifiers changed from: package-private */
    public b(IBinder iBinder) {
        super(iBinder, "com.android.vending.billing.IInAppBillingService");
    }

    @Override // com.google.android.gms.internal.play_billing.d
    public final Bundle I(int i9, String str, String str2, String str3, String str4, Bundle bundle) throws RemoteException {
        Parcel f10 = f();
        f10.writeInt(i9);
        f10.writeString(str);
        f10.writeString(str2);
        f10.writeString(str3);
        f10.writeString(null);
        g.b(f10, bundle);
        Parcel D0 = D0(8, f10);
        Bundle bundle2 = (Bundle) g.a(D0, Bundle.CREATOR);
        D0.recycle();
        return bundle2;
    }

    @Override // com.google.android.gms.internal.play_billing.d
    public final Bundle J(int i9, String str, String str2, Bundle bundle) throws RemoteException {
        Parcel f10 = f();
        f10.writeInt(3);
        f10.writeString(str);
        f10.writeString(str2);
        g.b(f10, bundle);
        Parcel D0 = D0(2, f10);
        Bundle bundle2 = (Bundle) g.a(D0, Bundle.CREATOR);
        D0.recycle();
        return bundle2;
    }

    @Override // com.google.android.gms.internal.play_billing.d
    public final Bundle T(int i9, String str, String str2, String str3, Bundle bundle) throws RemoteException {
        Parcel f10 = f();
        f10.writeInt(9);
        f10.writeString(str);
        f10.writeString(str2);
        f10.writeString(str3);
        g.b(f10, bundle);
        Parcel D0 = D0(11, f10);
        Bundle bundle2 = (Bundle) g.a(D0, Bundle.CREATOR);
        D0.recycle();
        return bundle2;
    }

    @Override // com.google.android.gms.internal.play_billing.d
    public final Bundle b0(int i9, String str, String str2, Bundle bundle, Bundle bundle2) throws RemoteException {
        Parcel f10 = f();
        f10.writeInt(10);
        f10.writeString(str);
        f10.writeString(str2);
        g.b(f10, bundle);
        g.b(f10, bundle2);
        Parcel D0 = D0(901, f10);
        Bundle bundle3 = (Bundle) g.a(D0, Bundle.CREATOR);
        D0.recycle();
        return bundle3;
    }

    @Override // com.google.android.gms.internal.play_billing.d
    public final Bundle e0(int i9, String str, String str2, Bundle bundle) throws RemoteException {
        Parcel f10 = f();
        f10.writeInt(9);
        f10.writeString(str);
        f10.writeString(str2);
        g.b(f10, bundle);
        Parcel D0 = D0(12, f10);
        Bundle bundle2 = (Bundle) g.a(D0, Bundle.CREATOR);
        D0.recycle();
        return bundle2;
    }

    @Override // com.google.android.gms.internal.play_billing.d
    public final Bundle h0(int i9, String str, String str2, String str3, Bundle bundle) throws RemoteException {
        Parcel f10 = f();
        f10.writeInt(6);
        f10.writeString(str);
        f10.writeString(str2);
        f10.writeString(str3);
        g.b(f10, bundle);
        Parcel D0 = D0(9, f10);
        Bundle bundle2 = (Bundle) g.a(D0, Bundle.CREATOR);
        D0.recycle();
        return bundle2;
    }

    @Override // com.google.android.gms.internal.play_billing.d
    public final int j(int i9, String str, String str2) throws RemoteException {
        Parcel f10 = f();
        f10.writeInt(3);
        f10.writeString(str);
        f10.writeString(str2);
        Parcel D0 = D0(5, f10);
        int readInt = D0.readInt();
        D0.recycle();
        return readInt;
    }

    @Override // com.google.android.gms.internal.play_billing.d
    public final Bundle n0(int i9, String str, String str2, String str3, String str4) throws RemoteException {
        Parcel f10 = f();
        f10.writeInt(3);
        f10.writeString(str);
        f10.writeString(str2);
        f10.writeString(str3);
        f10.writeString(null);
        Parcel D0 = D0(3, f10);
        Bundle bundle = (Bundle) g.a(D0, Bundle.CREATOR);
        D0.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.play_billing.d
    public final Bundle t(int i9, String str, String str2, String str3) throws RemoteException {
        Parcel f10 = f();
        f10.writeInt(3);
        f10.writeString(str);
        f10.writeString(str2);
        f10.writeString(str3);
        Parcel D0 = D0(4, f10);
        Bundle bundle = (Bundle) g.a(D0, Bundle.CREATOR);
        D0.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.play_billing.d
    public final int w(int i9, String str, String str2) throws RemoteException {
        Parcel f10 = f();
        f10.writeInt(i9);
        f10.writeString(str);
        f10.writeString(str2);
        Parcel D0 = D0(1, f10);
        int readInt = D0.readInt();
        D0.recycle();
        return readInt;
    }
}
