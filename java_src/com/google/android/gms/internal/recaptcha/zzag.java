package com.google.android.gms.internal.recaptcha;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
/* loaded from: classes2.dex */
public final class zzag extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzag> CREATOR = new h();
    private final String zza;
    private final String zzb;

    public zzag(String str, String str2) {
        this.zza = str;
        this.zzb = str2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i9) {
        int a10 = x3.a.a(parcel);
        x3.a.q(parcel, 1, this.zza, false);
        x3.a.q(parcel, 2, this.zzb, false);
        x3.a.b(parcel, a10);
    }
}
