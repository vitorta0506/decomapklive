package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.internal.zat;
/* loaded from: classes2.dex */
public final class d implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int I = SafeParcelReader.I(parcel);
        int i9 = 0;
        zat zatVar = null;
        while (parcel.dataPosition() < I) {
            int B = SafeParcelReader.B(parcel);
            int u10 = SafeParcelReader.u(B);
            if (u10 == 1) {
                i9 = SafeParcelReader.D(parcel, B);
            } else if (u10 != 2) {
                SafeParcelReader.H(parcel, B);
            } else {
                zatVar = (zat) SafeParcelReader.n(parcel, B, zat.CREATOR);
            }
        }
        SafeParcelReader.t(parcel, I);
        return new zai(i9, zatVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i9) {
        return new zai[i9];
    }
}
