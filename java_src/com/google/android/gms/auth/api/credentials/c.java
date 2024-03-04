package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2.dex */
public final class c implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int I = SafeParcelReader.I(parcel);
        String[] strArr = null;
        CredentialPickerConfig credentialPickerConfig = null;
        CredentialPickerConfig credentialPickerConfig2 = null;
        String str = null;
        String str2 = null;
        int i9 = 0;
        boolean z10 = false;
        boolean z11 = false;
        boolean z12 = false;
        while (parcel.dataPosition() < I) {
            int B = SafeParcelReader.B(parcel);
            int u10 = SafeParcelReader.u(B);
            if (u10 != 1000) {
                switch (u10) {
                    case 1:
                        z10 = SafeParcelReader.v(parcel, B);
                        continue;
                    case 2:
                        strArr = SafeParcelReader.p(parcel, B);
                        continue;
                    case 3:
                        credentialPickerConfig = (CredentialPickerConfig) SafeParcelReader.n(parcel, B, CredentialPickerConfig.CREATOR);
                        continue;
                    case 4:
                        credentialPickerConfig2 = (CredentialPickerConfig) SafeParcelReader.n(parcel, B, CredentialPickerConfig.CREATOR);
                        continue;
                    case 5:
                        z11 = SafeParcelReader.v(parcel, B);
                        continue;
                    case 6:
                        str = SafeParcelReader.o(parcel, B);
                        continue;
                    case 7:
                        str2 = SafeParcelReader.o(parcel, B);
                        continue;
                    case 8:
                        z12 = SafeParcelReader.v(parcel, B);
                        continue;
                    default:
                        SafeParcelReader.H(parcel, B);
                        continue;
                }
            } else {
                i9 = SafeParcelReader.D(parcel, B);
            }
        }
        SafeParcelReader.t(parcel, I);
        return new CredentialRequest(i9, z10, strArr, credentialPickerConfig, credentialPickerConfig2, z11, str, str2, z12);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i9) {
        return new CredentialRequest[i9];
    }
}
