package com.google.android.gms.internal.recaptcha;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.recaptcha.RecaptchaResultData;
/* loaded from: classes2.dex */
public final class vk implements Parcelable.Creator<zzx> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzx createFromParcel(Parcel parcel) {
        int I = SafeParcelReader.I(parcel);
        RecaptchaResultData recaptchaResultData = null;
        while (parcel.dataPosition() < I) {
            int B = SafeParcelReader.B(parcel);
            if (SafeParcelReader.u(B) != 1) {
                SafeParcelReader.H(parcel, B);
            } else {
                recaptchaResultData = (RecaptchaResultData) SafeParcelReader.n(parcel, B, RecaptchaResultData.CREATOR);
            }
        }
        SafeParcelReader.t(parcel, I);
        return new zzx(recaptchaResultData);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzx[] newArray(int i9) {
        return new zzx[i9];
    }
}
