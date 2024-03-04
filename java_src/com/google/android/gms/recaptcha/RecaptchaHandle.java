package com.google.android.gms.recaptcha;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.util.List;
/* loaded from: classes2.dex */
public class RecaptchaHandle extends AbstractSafeParcelable {
    @NonNull
    public static final Parcelable.Creator<RecaptchaHandle> CREATOR = new g();
    private final String zza;
    private final String zzb;
    private final List<String> zzc;

    public RecaptchaHandle(@NonNull String str, @NonNull String str2, @NonNull List<String> list) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = list;
    }

    @NonNull
    public List<String> I() {
        return this.zzc;
    }

    @NonNull
    public String K() {
        return this.zzb;
    }

    @NonNull
    public String L() {
        return this.zza;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i9) {
        int a10 = x3.a.a(parcel);
        x3.a.q(parcel, 1, L(), false);
        x3.a.q(parcel, 2, K(), false);
        x3.a.s(parcel, 3, I(), false);
        x3.a.b(parcel, a10);
    }
}
