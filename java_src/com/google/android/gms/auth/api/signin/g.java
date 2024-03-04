package com.google.android.gms.auth.api.signin;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2.dex */
public final class g implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int I = SafeParcelReader.I(parcel);
        String str = "";
        GoogleSignInAccount googleSignInAccount = null;
        String str2 = "";
        while (parcel.dataPosition() < I) {
            int B = SafeParcelReader.B(parcel);
            int u10 = SafeParcelReader.u(B);
            if (u10 == 4) {
                str = SafeParcelReader.o(parcel, B);
            } else if (u10 == 7) {
                googleSignInAccount = (GoogleSignInAccount) SafeParcelReader.n(parcel, B, GoogleSignInAccount.CREATOR);
            } else if (u10 != 8) {
                SafeParcelReader.H(parcel, B);
            } else {
                str2 = SafeParcelReader.o(parcel, B);
            }
        }
        SafeParcelReader.t(parcel, I);
        return new SignInAccount(str, googleSignInAccount, str2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i9) {
        return new SignInAccount[i9];
    }
}
