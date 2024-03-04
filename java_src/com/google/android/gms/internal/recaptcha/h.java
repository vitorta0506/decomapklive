package com.google.android.gms.internal.recaptcha;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2.dex */
public final class h implements Parcelable.Creator<zzag> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzag createFromParcel(Parcel parcel) {
        int I = SafeParcelReader.I(parcel);
        String str = "";
        String str2 = "16.0.0";
        while (parcel.dataPosition() < I) {
            int B = SafeParcelReader.B(parcel);
            int u10 = SafeParcelReader.u(B);
            if (u10 == 1) {
                str = SafeParcelReader.o(parcel, B);
            } else if (u10 != 2) {
                SafeParcelReader.H(parcel, B);
            } else {
                str2 = SafeParcelReader.o(parcel, B);
            }
        }
        SafeParcelReader.t(parcel, I);
        return new zzag(str, str2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzag[] newArray(int i9) {
        return new zzag[i9];
    }
}
