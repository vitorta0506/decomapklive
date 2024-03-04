package com.google.android.gms.auth.api.accounttransfer;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2.dex */
public final class e implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int I = SafeParcelReader.I(parcel);
        long j10 = 0;
        int i9 = 0;
        boolean z10 = false;
        boolean z11 = false;
        while (parcel.dataPosition() < I) {
            int B = SafeParcelReader.B(parcel);
            int u10 = SafeParcelReader.u(B);
            if (u10 == 1) {
                i9 = SafeParcelReader.D(parcel, B);
            } else if (u10 == 2) {
                z10 = SafeParcelReader.v(parcel, B);
            } else if (u10 == 3) {
                j10 = SafeParcelReader.E(parcel, B);
            } else if (u10 != 4) {
                SafeParcelReader.H(parcel, B);
            } else {
                z11 = SafeParcelReader.v(parcel, B);
            }
        }
        SafeParcelReader.t(parcel, I);
        return new DeviceMetaData(i9, z10, j10, z11);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i9) {
        return new DeviceMetaData[i9];
    }
}
