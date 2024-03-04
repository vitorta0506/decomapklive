package com.google.android.gms.internal.recaptcha;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.recaptcha.RecaptchaAction;
import com.google.android.gms.recaptcha.RecaptchaHandle;
/* loaded from: classes2.dex */
public final class zzv extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzv> CREATOR = new mk();
    private final RecaptchaHandle zza;
    private final RecaptchaAction zzb;
    private final String zzc;

    public zzv(RecaptchaHandle recaptchaHandle, RecaptchaAction recaptchaAction, String str) {
        this.zza = recaptchaHandle;
        this.zzb = recaptchaAction;
        this.zzc = str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i9) {
        int a10 = x3.a.a(parcel);
        x3.a.p(parcel, 1, this.zza, i9, false);
        x3.a.p(parcel, 2, this.zzb, i9, false);
        x3.a.q(parcel, 3, this.zzc, false);
        x3.a.b(parcel, a10);
    }
}
