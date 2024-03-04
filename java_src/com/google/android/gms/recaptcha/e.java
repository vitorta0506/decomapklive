package com.google.android.gms.recaptcha;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2.dex */
public final class e implements Parcelable.Creator<RecaptchaAction> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ RecaptchaAction createFromParcel(Parcel parcel) {
        int I = SafeParcelReader.I(parcel);
        RecaptchaActionType recaptchaActionType = new RecaptchaActionType("other");
        Bundle bundle = new Bundle();
        String str = "";
        String str2 = "";
        while (parcel.dataPosition() < I) {
            int B = SafeParcelReader.B(parcel);
            int u10 = SafeParcelReader.u(B);
            if (u10 == 1) {
                recaptchaActionType = (RecaptchaActionType) SafeParcelReader.n(parcel, B, RecaptchaActionType.CREATOR);
            } else if (u10 == 2) {
                str = SafeParcelReader.o(parcel, B);
            } else if (u10 == 3) {
                bundle = SafeParcelReader.f(parcel, B);
            } else if (u10 != 4) {
                SafeParcelReader.H(parcel, B);
            } else {
                str2 = SafeParcelReader.o(parcel, B);
            }
        }
        SafeParcelReader.t(parcel, I);
        return new RecaptchaAction(recaptchaActionType, str, bundle, str2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ RecaptchaAction[] newArray(int i9) {
        return new RecaptchaAction[i9];
    }
}
