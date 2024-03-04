package com.google.android.gms.internal.recaptcha;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.recaptcha.RecaptchaResultData;
/* loaded from: classes2.dex */
public final class zzx extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzx> CREATOR = new vk();
    private final RecaptchaResultData zza;

    public zzx(RecaptchaResultData recaptchaResultData) {
        this.zza = recaptchaResultData;
    }

    public final RecaptchaResultData I() {
        return this.zza;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i9) {
        int a10 = x3.a.a(parcel);
        x3.a.p(parcel, 1, this.zza, i9, false);
        x3.a.b(parcel, a10);
    }
}
