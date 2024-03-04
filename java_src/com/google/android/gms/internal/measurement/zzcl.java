package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
/* loaded from: classes2.dex */
public final class zzcl extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzcl> CREATOR = new n1();
    public final long zza;
    public final long zzb;
    public final boolean zzc;
    @Nullable
    public final String zzd;
    @Nullable
    public final String zze;
    @Nullable
    public final String zzf;
    @Nullable
    public final Bundle zzg;
    @Nullable
    public final String zzh;

    public zzcl(long j10, long j11, boolean z10, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable Bundle bundle, @Nullable String str4) {
        this.zza = j10;
        this.zzb = j11;
        this.zzc = z10;
        this.zzd = str;
        this.zze = str2;
        this.zzf = str3;
        this.zzg = bundle;
        this.zzh = str4;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i9) {
        int a10 = x3.a.a(parcel);
        x3.a.m(parcel, 1, this.zza);
        x3.a.m(parcel, 2, this.zzb);
        x3.a.c(parcel, 3, this.zzc);
        x3.a.q(parcel, 4, this.zzd, false);
        x3.a.q(parcel, 5, this.zze, false);
        x3.a.q(parcel, 6, this.zzf, false);
        x3.a.e(parcel, 7, this.zzg, false);
        x3.a.q(parcel, 8, this.zzh, false);
        x3.a.b(parcel, a10);
    }
}
