package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2.dex */
public final class n1 implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int I = SafeParcelReader.I(parcel);
        long j10 = 0;
        long j11 = 0;
        String str = null;
        String str2 = null;
        String str3 = null;
        Bundle bundle = null;
        String str4 = null;
        boolean z10 = false;
        while (parcel.dataPosition() < I) {
            int B = SafeParcelReader.B(parcel);
            switch (SafeParcelReader.u(B)) {
                case 1:
                    j10 = SafeParcelReader.E(parcel, B);
                    break;
                case 2:
                    j11 = SafeParcelReader.E(parcel, B);
                    break;
                case 3:
                    z10 = SafeParcelReader.v(parcel, B);
                    break;
                case 4:
                    str = SafeParcelReader.o(parcel, B);
                    break;
                case 5:
                    str2 = SafeParcelReader.o(parcel, B);
                    break;
                case 6:
                    str3 = SafeParcelReader.o(parcel, B);
                    break;
                case 7:
                    bundle = SafeParcelReader.f(parcel, B);
                    break;
                case 8:
                    str4 = SafeParcelReader.o(parcel, B);
                    break;
                default:
                    SafeParcelReader.H(parcel, B);
                    break;
            }
        }
        SafeParcelReader.t(parcel, I);
        return new zzcl(j10, j11, z10, str, str2, str3, bundle, str4);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i9) {
        return new zzcl[i9];
    }
}
