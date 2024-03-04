package com.google.android.gms.auth.api.identity;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.identity.BeginSignInRequest;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2.dex */
public final class a implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int I = SafeParcelReader.I(parcel);
        BeginSignInRequest.PasswordRequestOptions passwordRequestOptions = null;
        BeginSignInRequest.GoogleIdTokenRequestOptions googleIdTokenRequestOptions = null;
        String str = null;
        boolean z10 = false;
        int i9 = 0;
        while (parcel.dataPosition() < I) {
            int B = SafeParcelReader.B(parcel);
            int u10 = SafeParcelReader.u(B);
            if (u10 == 1) {
                passwordRequestOptions = (BeginSignInRequest.PasswordRequestOptions) SafeParcelReader.n(parcel, B, BeginSignInRequest.PasswordRequestOptions.CREATOR);
            } else if (u10 == 2) {
                googleIdTokenRequestOptions = (BeginSignInRequest.GoogleIdTokenRequestOptions) SafeParcelReader.n(parcel, B, BeginSignInRequest.GoogleIdTokenRequestOptions.CREATOR);
            } else if (u10 == 3) {
                str = SafeParcelReader.o(parcel, B);
            } else if (u10 == 4) {
                z10 = SafeParcelReader.v(parcel, B);
            } else if (u10 != 5) {
                SafeParcelReader.H(parcel, B);
            } else {
                i9 = SafeParcelReader.D(parcel, B);
            }
        }
        SafeParcelReader.t(parcel, I);
        return new BeginSignInRequest(passwordRequestOptions, googleIdTokenRequestOptions, str, z10, i9);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i9) {
        return new BeginSignInRequest[i9];
    }
}
