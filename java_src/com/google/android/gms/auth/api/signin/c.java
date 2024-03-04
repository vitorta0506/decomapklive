package com.google.android.gms.auth.api.signin;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public final class c implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int I = SafeParcelReader.I(parcel);
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        Uri uri = null;
        String str5 = null;
        String str6 = null;
        ArrayList arrayList = null;
        String str7 = null;
        String str8 = null;
        long j10 = 0;
        int i9 = 0;
        while (parcel.dataPosition() < I) {
            int B = SafeParcelReader.B(parcel);
            switch (SafeParcelReader.u(B)) {
                case 1:
                    i9 = SafeParcelReader.D(parcel, B);
                    break;
                case 2:
                    str = SafeParcelReader.o(parcel, B);
                    break;
                case 3:
                    str2 = SafeParcelReader.o(parcel, B);
                    break;
                case 4:
                    str3 = SafeParcelReader.o(parcel, B);
                    break;
                case 5:
                    str4 = SafeParcelReader.o(parcel, B);
                    break;
                case 6:
                    uri = (Uri) SafeParcelReader.n(parcel, B, Uri.CREATOR);
                    break;
                case 7:
                    str5 = SafeParcelReader.o(parcel, B);
                    break;
                case 8:
                    j10 = SafeParcelReader.E(parcel, B);
                    break;
                case 9:
                    str6 = SafeParcelReader.o(parcel, B);
                    break;
                case 10:
                    arrayList = SafeParcelReader.s(parcel, B, Scope.CREATOR);
                    break;
                case 11:
                    str7 = SafeParcelReader.o(parcel, B);
                    break;
                case 12:
                    str8 = SafeParcelReader.o(parcel, B);
                    break;
                default:
                    SafeParcelReader.H(parcel, B);
                    break;
            }
        }
        SafeParcelReader.t(parcel, I);
        return new GoogleSignInAccount(i9, str, str2, str3, str4, uri, str5, j10, str6, arrayList, str7, str8);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i9) {
        return new GoogleSignInAccount[i9];
    }
}
