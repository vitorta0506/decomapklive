package com.google.android.gms.common;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2.dex */
public final class u implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int I = SafeParcelReader.I(parcel);
        boolean z10 = false;
        String str = null;
        IBinder iBinder = null;
        boolean z11 = false;
        while (parcel.dataPosition() < I) {
            int B = SafeParcelReader.B(parcel);
            int u10 = SafeParcelReader.u(B);
            if (u10 == 1) {
                str = SafeParcelReader.o(parcel, B);
            } else if (u10 == 2) {
                iBinder = SafeParcelReader.C(parcel, B);
            } else if (u10 == 3) {
                z10 = SafeParcelReader.v(parcel, B);
            } else if (u10 != 4) {
                SafeParcelReader.H(parcel, B);
            } else {
                z11 = SafeParcelReader.v(parcel, B);
            }
        }
        SafeParcelReader.t(parcel, I);
        return new zzs(str, iBinder, z10, z11);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i9) {
        return new zzs[i9];
    }
}
