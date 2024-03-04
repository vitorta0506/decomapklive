package com.google.android.gms.auth.api.proxy;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2.dex */
public final class a implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int I = SafeParcelReader.I(parcel);
        String str = null;
        byte[] bArr = null;
        Bundle bundle = null;
        long j10 = 0;
        int i9 = 0;
        int i10 = 0;
        while (parcel.dataPosition() < I) {
            int B = SafeParcelReader.B(parcel);
            int u10 = SafeParcelReader.u(B);
            if (u10 == 1) {
                str = SafeParcelReader.o(parcel, B);
            } else if (u10 == 2) {
                i10 = SafeParcelReader.D(parcel, B);
            } else if (u10 == 3) {
                j10 = SafeParcelReader.E(parcel, B);
            } else if (u10 == 4) {
                bArr = SafeParcelReader.g(parcel, B);
            } else if (u10 == 5) {
                bundle = SafeParcelReader.f(parcel, B);
            } else if (u10 != 1000) {
                SafeParcelReader.H(parcel, B);
            } else {
                i9 = SafeParcelReader.D(parcel, B);
            }
        }
        SafeParcelReader.t(parcel, I);
        return new ProxyRequest(i9, str, i10, j10, bArr, bundle);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i9) {
        return new ProxyRequest[i9];
    }
}
