package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2.dex */
public final class e implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int I = SafeParcelReader.I(parcel);
        Parcel parcel2 = null;
        zan zanVar = null;
        int i9 = 0;
        while (parcel.dataPosition() < I) {
            int B = SafeParcelReader.B(parcel);
            int u10 = SafeParcelReader.u(B);
            if (u10 == 1) {
                i9 = SafeParcelReader.D(parcel, B);
            } else if (u10 == 2) {
                parcel2 = SafeParcelReader.l(parcel, B);
            } else if (u10 != 3) {
                SafeParcelReader.H(parcel, B);
            } else {
                zanVar = (zan) SafeParcelReader.n(parcel, B, zan.CREATOR);
            }
        }
        SafeParcelReader.t(parcel, I);
        return new SafeParcelResponse(i9, parcel2, zanVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i9) {
        return new SafeParcelResponse[i9];
    }
}
