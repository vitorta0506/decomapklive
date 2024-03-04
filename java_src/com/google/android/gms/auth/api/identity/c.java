package com.google.android.gms.auth.api.identity;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2.dex */
public final class c implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int I = SafeParcelReader.I(parcel);
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        boolean z10 = false;
        int i9 = 0;
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
                    str3 = SafeParcelReader.o(parcel, B);
                    break;
                case 4:
                    str4 = SafeParcelReader.o(parcel, B);
                    break;
                case 5:
                    z10 = SafeParcelReader.v(parcel, B);
                    break;
                case 6:
                    i9 = SafeParcelReader.D(parcel, B);
                    break;
                default:
                    SafeParcelReader.H(parcel, B);
                    break;
            }
        }
        SafeParcelReader.t(parcel, I);
        return new GetSignInIntentRequest(str, str2, str3, str4, z10, i9);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i9) {
        return new GetSignInIntentRequest[i9];
    }
}
