package com.google.android.gms.auth.api.proxy;

import android.app.PendingIntent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2.dex */
public final class b implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int I = SafeParcelReader.I(parcel);
        PendingIntent pendingIntent = null;
        Bundle bundle = null;
        byte[] bArr = null;
        int i9 = 0;
        int i10 = 0;
        int i11 = 0;
        while (parcel.dataPosition() < I) {
            int B = SafeParcelReader.B(parcel);
            int u10 = SafeParcelReader.u(B);
            if (u10 == 1) {
                i10 = SafeParcelReader.D(parcel, B);
            } else if (u10 == 2) {
                pendingIntent = (PendingIntent) SafeParcelReader.n(parcel, B, PendingIntent.CREATOR);
            } else if (u10 == 3) {
                i11 = SafeParcelReader.D(parcel, B);
            } else if (u10 == 4) {
                bundle = SafeParcelReader.f(parcel, B);
            } else if (u10 == 5) {
                bArr = SafeParcelReader.g(parcel, B);
            } else if (u10 != 1000) {
                SafeParcelReader.H(parcel, B);
            } else {
                i9 = SafeParcelReader.D(parcel, B);
            }
        }
        SafeParcelReader.t(parcel, I);
        return new ProxyResponse(i9, i10, pendingIntent, i11, bundle, bArr);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i9) {
        return new ProxyResponse[i9];
    }
}
