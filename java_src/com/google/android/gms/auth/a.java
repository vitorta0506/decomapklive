package com.google.android.gms.auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2.dex */
public final class a implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int I = SafeParcelReader.I(parcel);
        String str = null;
        String str2 = null;
        long j10 = 0;
        int i9 = 0;
        int i10 = 0;
        int i11 = 0;
        while (parcel.dataPosition() < I) {
            int B = SafeParcelReader.B(parcel);
            switch (SafeParcelReader.u(B)) {
                case 1:
                    i9 = SafeParcelReader.D(parcel, B);
                    break;
                case 2:
                    j10 = SafeParcelReader.E(parcel, B);
                    break;
                case 3:
                    str = SafeParcelReader.o(parcel, B);
                    break;
                case 4:
                    i10 = SafeParcelReader.D(parcel, B);
                    break;
                case 5:
                    i11 = SafeParcelReader.D(parcel, B);
                    break;
                case 6:
                    str2 = SafeParcelReader.o(parcel, B);
                    break;
                default:
                    SafeParcelReader.H(parcel, B);
                    break;
            }
        }
        SafeParcelReader.t(parcel, I);
        return new AccountChangeEvent(i9, j10, str, i10, i11, str2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i9) {
        return new AccountChangeEvent[i9];
    }
}
