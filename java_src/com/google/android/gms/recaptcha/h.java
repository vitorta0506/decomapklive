package com.google.android.gms.recaptcha;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2.dex */
public final class h implements Parcelable.Creator<RecaptchaResultData> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ RecaptchaResultData createFromParcel(Parcel parcel) {
        int I = SafeParcelReader.I(parcel);
        String str = "";
        while (parcel.dataPosition() < I) {
            int B = SafeParcelReader.B(parcel);
            if (SafeParcelReader.u(B) != 1) {
                SafeParcelReader.H(parcel, B);
            } else {
                str = SafeParcelReader.o(parcel, B);
            }
        }
        SafeParcelReader.t(parcel, I);
        return new RecaptchaResultData(str);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ RecaptchaResultData[] newArray(int i9) {
        return new RecaptchaResultData[i9];
    }
}
