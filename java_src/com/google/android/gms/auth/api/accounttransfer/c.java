package com.google.android.gms.auth.api.accounttransfer;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.HashSet;
/* loaded from: classes2.dex */
public final class c implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int I = SafeParcelReader.I(parcel);
        HashSet hashSet = new HashSet();
        int i9 = 0;
        zzw zzwVar = null;
        String str = null;
        String str2 = null;
        String str3 = null;
        while (parcel.dataPosition() < I) {
            int B = SafeParcelReader.B(parcel);
            int u10 = SafeParcelReader.u(B);
            if (u10 == 1) {
                i9 = SafeParcelReader.D(parcel, B);
                hashSet.add(1);
            } else if (u10 == 2) {
                zzwVar = (zzw) SafeParcelReader.n(parcel, B, zzw.CREATOR);
                hashSet.add(2);
            } else if (u10 == 3) {
                str = SafeParcelReader.o(parcel, B);
                hashSet.add(3);
            } else if (u10 == 4) {
                str2 = SafeParcelReader.o(parcel, B);
                hashSet.add(4);
            } else if (u10 != 5) {
                SafeParcelReader.H(parcel, B);
            } else {
                str3 = SafeParcelReader.o(parcel, B);
                hashSet.add(5);
            }
        }
        if (parcel.dataPosition() == I) {
            return new zzu(hashSet, i9, zzwVar, str, str2, str3);
        }
        throw new SafeParcelReader.ParseException("Overread allowed size end=" + I, parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i9) {
        return new zzu[i9];
    }
}
