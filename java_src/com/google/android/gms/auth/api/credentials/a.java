package com.google.android.gms.auth.api.credentials;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public final class a implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int I = SafeParcelReader.I(parcel);
        String str = null;
        String str2 = null;
        Uri uri = null;
        ArrayList arrayList = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        while (parcel.dataPosition() < I) {
            int B = SafeParcelReader.B(parcel);
            switch (SafeParcelReader.u(B)) {
                case 1:
                    str = SafeParcelReader.o(parcel, B);
                    break;
                case 2:
                    str2 = SafeParcelReader.o(parcel, B);
                    break;
                case 3:
                    uri = (Uri) SafeParcelReader.n(parcel, B, Uri.CREATOR);
                    break;
                case 4:
                    arrayList = SafeParcelReader.s(parcel, B, IdToken.CREATOR);
                    break;
                case 5:
                    str3 = SafeParcelReader.o(parcel, B);
                    break;
                case 6:
                    str4 = SafeParcelReader.o(parcel, B);
                    break;
                case 7:
                case 8:
                default:
                    SafeParcelReader.H(parcel, B);
                    break;
                case 9:
                    str5 = SafeParcelReader.o(parcel, B);
                    break;
                case 10:
                    str6 = SafeParcelReader.o(parcel, B);
                    break;
            }
        }
        SafeParcelReader.t(parcel, I);
        return new Credential(str, str2, uri, arrayList, str3, str4, str5, str6);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i9) {
        return new Credential[i9];
    }
}
