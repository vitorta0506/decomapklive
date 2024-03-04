package com.google.android.gms.internal.recaptcha;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.recaptcha.RecaptchaAction;
import com.google.android.gms.recaptcha.RecaptchaHandle;
/* loaded from: classes2.dex */
public final class mk implements Parcelable.Creator<zzv> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzv createFromParcel(Parcel parcel) {
        int I = SafeParcelReader.I(parcel);
        RecaptchaHandle recaptchaHandle = null;
        String str = "16.0.0";
        RecaptchaAction recaptchaAction = null;
        while (parcel.dataPosition() < I) {
            int B = SafeParcelReader.B(parcel);
            int u10 = SafeParcelReader.u(B);
            if (u10 == 1) {
                recaptchaHandle = (RecaptchaHandle) SafeParcelReader.n(parcel, B, RecaptchaHandle.CREATOR);
            } else if (u10 == 2) {
                recaptchaAction = (RecaptchaAction) SafeParcelReader.n(parcel, B, RecaptchaAction.CREATOR);
            } else if (u10 != 3) {
                SafeParcelReader.H(parcel, B);
            } else {
                str = SafeParcelReader.o(parcel, B);
            }
        }
        SafeParcelReader.t(parcel, I);
        return new zzv(recaptchaHandle, recaptchaAction, str);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzv[] newArray(int i9) {
        return new zzv[i9];
    }
}
