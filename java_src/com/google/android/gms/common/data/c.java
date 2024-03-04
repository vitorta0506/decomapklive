package com.google.android.gms.common.data;

import android.database.CursorWindow;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2.dex */
public final class c implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int I = SafeParcelReader.I(parcel);
        String[] strArr = null;
        CursorWindow[] cursorWindowArr = null;
        Bundle bundle = null;
        int i9 = 0;
        int i10 = 0;
        while (parcel.dataPosition() < I) {
            int B = SafeParcelReader.B(parcel);
            int u10 = SafeParcelReader.u(B);
            if (u10 == 1) {
                strArr = SafeParcelReader.p(parcel, B);
            } else if (u10 == 2) {
                cursorWindowArr = (CursorWindow[]) SafeParcelReader.r(parcel, B, CursorWindow.CREATOR);
            } else if (u10 == 3) {
                i10 = SafeParcelReader.D(parcel, B);
            } else if (u10 == 4) {
                bundle = SafeParcelReader.f(parcel, B);
            } else if (u10 != 1000) {
                SafeParcelReader.H(parcel, B);
            } else {
                i9 = SafeParcelReader.D(parcel, B);
            }
        }
        SafeParcelReader.t(parcel, I);
        DataHolder dataHolder = new DataHolder(i9, strArr, cursorWindowArr, i10, bundle);
        dataHolder.K();
        return dataHolder;
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i9) {
        return new DataHolder[i9];
    }
}
