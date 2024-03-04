package com.google.android.gms.auth.api.accounttransfer;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
import java.util.HashSet;
/* loaded from: classes2.dex */
public final class a implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int I = SafeParcelReader.I(parcel);
        HashSet hashSet = new HashSet();
        int i9 = 0;
        ArrayList arrayList = null;
        zzs zzsVar = null;
        int i10 = 0;
        while (parcel.dataPosition() < I) {
            int B = SafeParcelReader.B(parcel);
            int u10 = SafeParcelReader.u(B);
            if (u10 == 1) {
                i9 = SafeParcelReader.D(parcel, B);
                hashSet.add(1);
            } else if (u10 == 2) {
                arrayList = SafeParcelReader.s(parcel, B, zzu.CREATOR);
                hashSet.add(2);
            } else if (u10 == 3) {
                i10 = SafeParcelReader.D(parcel, B);
                hashSet.add(3);
            } else if (u10 != 4) {
                SafeParcelReader.H(parcel, B);
            } else {
                zzsVar = (zzs) SafeParcelReader.n(parcel, B, zzs.CREATOR);
                hashSet.add(4);
            }
        }
        if (parcel.dataPosition() == I) {
            return new zzo(hashSet, i9, arrayList, i10, zzsVar);
        }
        throw new SafeParcelReader.ParseException("Overread allowed size end=" + I, parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i9) {
        return new zzo[i9];
    }
}
