package com.google.android.gms.auth.api.signin;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.internal.GoogleSignInOptionsExtensionParcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public final class e implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int I = SafeParcelReader.I(parcel);
        ArrayList arrayList = null;
        Account account = null;
        String str = null;
        String str2 = null;
        ArrayList arrayList2 = null;
        String str3 = null;
        int i9 = 0;
        boolean z10 = false;
        boolean z11 = false;
        boolean z12 = false;
        while (parcel.dataPosition() < I) {
            int B = SafeParcelReader.B(parcel);
            switch (SafeParcelReader.u(B)) {
                case 1:
                    i9 = SafeParcelReader.D(parcel, B);
                    break;
                case 2:
                    arrayList = SafeParcelReader.s(parcel, B, Scope.CREATOR);
                    break;
                case 3:
                    account = (Account) SafeParcelReader.n(parcel, B, Account.CREATOR);
                    break;
                case 4:
                    z10 = SafeParcelReader.v(parcel, B);
                    break;
                case 5:
                    z11 = SafeParcelReader.v(parcel, B);
                    break;
                case 6:
                    z12 = SafeParcelReader.v(parcel, B);
                    break;
                case 7:
                    str = SafeParcelReader.o(parcel, B);
                    break;
                case 8:
                    str2 = SafeParcelReader.o(parcel, B);
                    break;
                case 9:
                    arrayList2 = SafeParcelReader.s(parcel, B, GoogleSignInOptionsExtensionParcelable.CREATOR);
                    break;
                case 10:
                    str3 = SafeParcelReader.o(parcel, B);
                    break;
                default:
                    SafeParcelReader.H(parcel, B);
                    break;
            }
        }
        SafeParcelReader.t(parcel, I);
        return new GoogleSignInOptions(i9, arrayList, account, z10, z11, z12, str, str2, arrayList2, str3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i9) {
        return new GoogleSignInOptions[i9];
    }
}
