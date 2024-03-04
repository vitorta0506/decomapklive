package com.google.android.gms.auth.api.identity;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2.dex */
public final class g implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int I = SafeParcelReader.I(parcel);
        SignInPassword signInPassword = null;
        String str = null;
        int i9 = 0;
        while (parcel.dataPosition() < I) {
            int B = SafeParcelReader.B(parcel);
            int u10 = SafeParcelReader.u(B);
            if (u10 == 1) {
                signInPassword = (SignInPassword) SafeParcelReader.n(parcel, B, SignInPassword.CREATOR);
            } else if (u10 == 2) {
                str = SafeParcelReader.o(parcel, B);
            } else if (u10 != 3) {
                SafeParcelReader.H(parcel, B);
            } else {
                i9 = SafeParcelReader.D(parcel, B);
            }
        }
        SafeParcelReader.t(parcel, I);
        return new SavePasswordRequest(signInPassword, str, i9);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i9) {
        return new SavePasswordRequest[i9];
    }
}
