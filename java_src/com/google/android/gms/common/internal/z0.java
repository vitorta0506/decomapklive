package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2.dex */
public final class z0 implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int I = SafeParcelReader.I(parcel);
        int i9 = 0;
        boolean z10 = false;
        boolean z11 = false;
        int i10 = 0;
        int i11 = 0;
        while (parcel.dataPosition() < I) {
            int B = SafeParcelReader.B(parcel);
            int u10 = SafeParcelReader.u(B);
            if (u10 == 1) {
                i9 = SafeParcelReader.D(parcel, B);
            } else if (u10 == 2) {
                z10 = SafeParcelReader.v(parcel, B);
            } else if (u10 == 3) {
                z11 = SafeParcelReader.v(parcel, B);
            } else if (u10 == 4) {
                i10 = SafeParcelReader.D(parcel, B);
            } else if (u10 != 5) {
                SafeParcelReader.H(parcel, B);
            } else {
                i11 = SafeParcelReader.D(parcel, B);
            }
        }
        SafeParcelReader.t(parcel, I);
        return new RootTelemetryConfiguration(i9, z10, z11, i10, i11);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i9) {
        return new RootTelemetryConfiguration[i9];
    }
}
