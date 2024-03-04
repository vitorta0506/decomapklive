package com.google.android.gms.recaptcha;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
/* loaded from: classes2.dex */
public class RecaptchaResultData extends AbstractSafeParcelable {
    @NonNull
    public static final Parcelable.Creator<RecaptchaResultData> CREATOR = new h();
    private final String zza;

    public RecaptchaResultData(@NonNull String str) {
        this.zza = str;
    }

    @NonNull
    public String I() {
        return this.zza;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i9) {
        int a10 = x3.a.a(parcel);
        x3.a.q(parcel, 1, I(), false);
        x3.a.b(parcel, a10);
    }
}
