package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public final class c implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int I = SafeParcelReader.I(parcel);
        ArrayList arrayList = null;
        String str = null;
        int i9 = 0;
        while (parcel.dataPosition() < I) {
            int B = SafeParcelReader.B(parcel);
            int u10 = SafeParcelReader.u(B);
            if (u10 == 1) {
                i9 = SafeParcelReader.D(parcel, B);
            } else if (u10 == 2) {
                arrayList = SafeParcelReader.s(parcel, B, zal.CREATOR);
            } else if (u10 != 3) {
                SafeParcelReader.H(parcel, B);
            } else {
                str = SafeParcelReader.o(parcel, B);
            }
        }
        SafeParcelReader.t(parcel, I);
        return new zan(i9, arrayList, str);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i9) {
        return new zan[i9];
    }
}
