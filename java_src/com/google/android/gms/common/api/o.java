package com.google.android.gms.common.api;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2.dex */
public final class o implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int I = SafeParcelReader.I(parcel);
        String str = null;
        PendingIntent pendingIntent = null;
        ConnectionResult connectionResult = null;
        int i9 = 0;
        int i10 = 0;
        while (parcel.dataPosition() < I) {
            int B = SafeParcelReader.B(parcel);
            int u10 = SafeParcelReader.u(B);
            if (u10 == 1) {
                i10 = SafeParcelReader.D(parcel, B);
            } else if (u10 == 2) {
                str = SafeParcelReader.o(parcel, B);
            } else if (u10 == 3) {
                pendingIntent = (PendingIntent) SafeParcelReader.n(parcel, B, PendingIntent.CREATOR);
            } else if (u10 == 4) {
                connectionResult = (ConnectionResult) SafeParcelReader.n(parcel, B, ConnectionResult.CREATOR);
            } else if (u10 != 1000) {
                SafeParcelReader.H(parcel, B);
            } else {
                i9 = SafeParcelReader.D(parcel, B);
            }
        }
        SafeParcelReader.t(parcel, I);
        return new Status(i9, i10, str, pendingIntent, connectionResult);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i9) {
        return new Status[i9];
    }
}
