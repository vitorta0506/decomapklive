package com.google.android.gms.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
/* loaded from: classes2.dex */
public final class zzq extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzq> CREATOR = new t();
    private final boolean zza;
    private final String zzb;
    private final int zzc;
    private final int zzd;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzq(boolean z10, String str, int i9, int i10) {
        this.zza = z10;
        this.zzb = str;
        this.zzc = x.a(i9) - 1;
        this.zzd = h.a(i10) - 1;
    }

    public final String I() {
        return this.zzb;
    }

    public final boolean K() {
        return this.zza;
    }

    public final int L() {
        return h.a(this.zzd);
    }

    public final int M() {
        return x.a(this.zzc);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i9) {
        int a10 = x3.a.a(parcel);
        x3.a.c(parcel, 1, this.zza);
        x3.a.q(parcel, 2, this.zzb, false);
        x3.a.k(parcel, 3, this.zzc);
        x3.a.k(parcel, 4, this.zzd);
        x3.a.b(parcel, a10);
    }
}
