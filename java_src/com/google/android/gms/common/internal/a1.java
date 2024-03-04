package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2.dex */
public final class a1 implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int I = SafeParcelReader.I(parcel);
        int i9 = 0;
        while (parcel.dataPosition() < I) {
            int B = SafeParcelReader.B(parcel);
            if (SafeParcelReader.u(B) != 1) {
                SafeParcelReader.H(parcel, B);
            } else {
                i9 = SafeParcelReader.D(parcel, B);
            }
        }
        SafeParcelReader.t(parcel, I);
        return new zzaj(i9);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i9) {
        return new zzaj[i9];
    }
}
