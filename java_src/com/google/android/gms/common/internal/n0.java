package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2.dex */
public final class n0 implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int I = SafeParcelReader.I(parcel);
        Account account = null;
        GoogleSignInAccount googleSignInAccount = null;
        int i9 = 0;
        int i10 = 0;
        while (parcel.dataPosition() < I) {
            int B = SafeParcelReader.B(parcel);
            int u10 = SafeParcelReader.u(B);
            if (u10 == 1) {
                i9 = SafeParcelReader.D(parcel, B);
            } else if (u10 == 2) {
                account = (Account) SafeParcelReader.n(parcel, B, Account.CREATOR);
            } else if (u10 == 3) {
                i10 = SafeParcelReader.D(parcel, B);
            } else if (u10 != 4) {
                SafeParcelReader.H(parcel, B);
            } else {
                googleSignInAccount = (GoogleSignInAccount) SafeParcelReader.n(parcel, B, GoogleSignInAccount.CREATOR);
            }
        }
        SafeParcelReader.t(parcel, I);
        return new zat(i9, account, i10, googleSignInAccount);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i9) {
        return new zat[i9];
    }
}
