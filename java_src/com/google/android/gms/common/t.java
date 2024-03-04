package com.google.android.gms.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2.dex */
public final class t implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int I = SafeParcelReader.I(parcel);
        boolean z10 = false;
        String str = null;
        int i9 = 0;
        int i10 = 0;
        while (parcel.dataPosition() < I) {
            int B = SafeParcelReader.B(parcel);
            int u10 = SafeParcelReader.u(B);
            if (u10 == 1) {
                z10 = SafeParcelReader.v(parcel, B);
            } else if (u10 == 2) {
                str = SafeParcelReader.o(parcel, B);
            } else if (u10 == 3) {
                i9 = SafeParcelReader.D(parcel, B);
            } else if (u10 != 4) {
                SafeParcelReader.H(parcel, B);
            } else {
                i10 = SafeParcelReader.D(parcel, B);
            }
        }
        SafeParcelReader.t(parcel, I);
        return new zzq(z10, str, i9, i10);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i9) {
        return new zzq[i9];
    }
}
