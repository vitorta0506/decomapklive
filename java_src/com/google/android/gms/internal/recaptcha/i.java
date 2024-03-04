package com.google.android.gms.internal.recaptcha;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.recaptcha.RecaptchaHandle;
/* loaded from: classes2.dex */
public final class i implements Parcelable.Creator<zzai> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzai createFromParcel(Parcel parcel) {
        int I = SafeParcelReader.I(parcel);
        RecaptchaHandle recaptchaHandle = null;
        while (parcel.dataPosition() < I) {
            int B = SafeParcelReader.B(parcel);
            if (SafeParcelReader.u(B) != 1) {
                SafeParcelReader.H(parcel, B);
            } else {
                recaptchaHandle = (RecaptchaHandle) SafeParcelReader.n(parcel, B, RecaptchaHandle.CREATOR);
            }
        }
        SafeParcelReader.t(parcel, I);
        return new zzai(recaptchaHandle);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzai[] newArray(int i9) {
        return new zzai[i9];
    }
}
