package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.internal.zav;
/* loaded from: classes2.dex */
public final class e implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int I = SafeParcelReader.I(parcel);
        ConnectionResult connectionResult = null;
        zav zavVar = null;
        int i9 = 0;
        while (parcel.dataPosition() < I) {
            int B = SafeParcelReader.B(parcel);
            int u10 = SafeParcelReader.u(B);
            if (u10 == 1) {
                i9 = SafeParcelReader.D(parcel, B);
            } else if (u10 == 2) {
                connectionResult = (ConnectionResult) SafeParcelReader.n(parcel, B, ConnectionResult.CREATOR);
            } else if (u10 != 3) {
                SafeParcelReader.H(parcel, B);
            } else {
                zavVar = (zav) SafeParcelReader.n(parcel, B, zav.CREATOR);
            }
        }
        SafeParcelReader.t(parcel, I);
        return new zak(i9, connectionResult, zavVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i9) {
        return new zak[i9];
    }
}
