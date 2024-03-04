package com.google.android.gms.auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public final class d implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int I = SafeParcelReader.I(parcel);
        String str = null;
        Long l10 = null;
        ArrayList<String> arrayList = null;
        String str2 = null;
        int i9 = 0;
        boolean z10 = false;
        boolean z11 = false;
        while (parcel.dataPosition() < I) {
            int B = SafeParcelReader.B(parcel);
            switch (SafeParcelReader.u(B)) {
                case 1:
                    i9 = SafeParcelReader.D(parcel, B);
                    break;
                case 2:
                    str = SafeParcelReader.o(parcel, B);
                    break;
                case 3:
                    l10 = SafeParcelReader.F(parcel, B);
                    break;
                case 4:
                    z10 = SafeParcelReader.v(parcel, B);
                    break;
                case 5:
                    z11 = SafeParcelReader.v(parcel, B);
                    break;
                case 6:
                    arrayList = SafeParcelReader.q(parcel, B);
                    break;
                case 7:
                    str2 = SafeParcelReader.o(parcel, B);
                    break;
                default:
                    SafeParcelReader.H(parcel, B);
                    break;
            }
        }
        SafeParcelReader.t(parcel, I);
        return new TokenData(i9, str, l10, z10, z11, arrayList, str2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i9) {
        return new TokenData[i9];
    }
}
