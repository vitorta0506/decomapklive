package com.google.android.gms.recaptcha;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public final class g implements Parcelable.Creator<RecaptchaHandle> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ RecaptchaHandle createFromParcel(Parcel parcel) {
        int I = SafeParcelReader.I(parcel);
        ArrayList<String> arrayList = new ArrayList<>();
        String str = "";
        String str2 = "";
        while (parcel.dataPosition() < I) {
            int B = SafeParcelReader.B(parcel);
            int u10 = SafeParcelReader.u(B);
            if (u10 == 1) {
                str = SafeParcelReader.o(parcel, B);
            } else if (u10 == 2) {
                str2 = SafeParcelReader.o(parcel, B);
            } else if (u10 != 3) {
                SafeParcelReader.H(parcel, B);
            } else {
                arrayList = SafeParcelReader.q(parcel, B);
            }
        }
        SafeParcelReader.t(parcel, I);
        return new RecaptchaHandle(str, str2, arrayList);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ RecaptchaHandle[] newArray(int i9) {
        return new RecaptchaHandle[i9];
    }
}
