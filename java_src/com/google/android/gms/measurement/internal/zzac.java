package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
/* loaded from: classes2.dex */
public final class zzac extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzac> CREATOR = new d();
    @Nullable
    public String zza;
    public String zzb;
    public zzlc zzc;
    public long zzd;
    public boolean zze;
    @Nullable
    public String zzf;
    @Nullable
    public final zzaw zzg;
    public long zzh;
    @Nullable
    public zzaw zzi;
    public final long zzj;
    @Nullable
    public final zzaw zzk;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzac(zzac zzacVar) {
        com.google.android.gms.common.internal.p.j(zzacVar);
        this.zza = zzacVar.zza;
        this.zzb = zzacVar.zzb;
        this.zzc = zzacVar.zzc;
        this.zzd = zzacVar.zzd;
        this.zze = zzacVar.zze;
        this.zzf = zzacVar.zzf;
        this.zzg = zzacVar.zzg;
        this.zzh = zzacVar.zzh;
        this.zzi = zzacVar.zzi;
        this.zzj = zzacVar.zzj;
        this.zzk = zzacVar.zzk;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i9) {
        int a10 = x3.a.a(parcel);
        x3.a.q(parcel, 2, this.zza, false);
        x3.a.q(parcel, 3, this.zzb, false);
        x3.a.p(parcel, 4, this.zzc, i9, false);
        x3.a.m(parcel, 5, this.zzd);
        x3.a.c(parcel, 6, this.zze);
        x3.a.q(parcel, 7, this.zzf, false);
        x3.a.p(parcel, 8, this.zzg, i9, false);
        x3.a.m(parcel, 9, this.zzh);
        x3.a.p(parcel, 10, this.zzi, i9, false);
        x3.a.m(parcel, 11, this.zzj);
        x3.a.p(parcel, 12, this.zzk, i9, false);
        x3.a.b(parcel, a10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzac(@Nullable String str, String str2, zzlc zzlcVar, long j10, boolean z10, @Nullable String str3, @Nullable zzaw zzawVar, long j11, @Nullable zzaw zzawVar2, long j12, @Nullable zzaw zzawVar3) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = zzlcVar;
        this.zzd = j10;
        this.zze = z10;
        this.zzf = str3;
        this.zzg = zzawVar;
        this.zzh = j11;
        this.zzi = zzawVar2;
        this.zzj = j12;
        this.zzk = zzawVar3;
    }
}
