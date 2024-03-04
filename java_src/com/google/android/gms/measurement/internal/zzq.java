package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.util.List;
/* loaded from: classes2.dex */
public final class zzq extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzq> CREATOR = new p9();
    @Nullable
    public final String zza;
    @Nullable
    public final String zzb;
    @Nullable
    public final String zzc;
    @Nullable
    public final String zzd;
    public final long zze;
    public final long zzf;
    @Nullable
    public final String zzg;
    public final boolean zzh;
    public final boolean zzi;
    public final long zzj;
    @Nullable
    public final String zzk;
    @Deprecated
    public final long zzl;
    public final long zzm;
    public final int zzn;
    public final boolean zzo;
    public final boolean zzp;
    @Nullable
    public final String zzq;
    @Nullable
    public final Boolean zzr;
    public final long zzs;
    @Nullable
    public final List zzt;
    @Nullable
    public final String zzu;
    public final String zzv;
    public final String zzw;
    @Nullable
    public final String zzx;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzq(@Nullable String str, @Nullable String str2, @Nullable String str3, long j10, @Nullable String str4, long j11, long j12, @Nullable String str5, boolean z10, boolean z11, @Nullable String str6, long j13, long j14, int i9, boolean z12, boolean z13, @Nullable String str7, @Nullable Boolean bool, long j15, @Nullable List list, @Nullable String str8, String str9, String str10, @Nullable String str11) {
        com.google.android.gms.common.internal.p.f(str);
        this.zza = str;
        this.zzb = true != TextUtils.isEmpty(str2) ? str2 : null;
        this.zzc = str3;
        this.zzj = j10;
        this.zzd = str4;
        this.zze = j11;
        this.zzf = j12;
        this.zzg = str5;
        this.zzh = z10;
        this.zzi = z11;
        this.zzk = str6;
        this.zzl = 0L;
        this.zzm = j14;
        this.zzn = i9;
        this.zzo = z12;
        this.zzp = z13;
        this.zzq = str7;
        this.zzr = bool;
        this.zzs = j15;
        this.zzt = list;
        this.zzu = null;
        this.zzv = str9;
        this.zzw = str10;
        this.zzx = str11;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i9) {
        int a10 = x3.a.a(parcel);
        x3.a.q(parcel, 2, this.zza, false);
        x3.a.q(parcel, 3, this.zzb, false);
        x3.a.q(parcel, 4, this.zzc, false);
        x3.a.q(parcel, 5, this.zzd, false);
        x3.a.m(parcel, 6, this.zze);
        x3.a.m(parcel, 7, this.zzf);
        x3.a.q(parcel, 8, this.zzg, false);
        x3.a.c(parcel, 9, this.zzh);
        x3.a.c(parcel, 10, this.zzi);
        x3.a.m(parcel, 11, this.zzj);
        x3.a.q(parcel, 12, this.zzk, false);
        x3.a.m(parcel, 13, this.zzl);
        x3.a.m(parcel, 14, this.zzm);
        x3.a.k(parcel, 15, this.zzn);
        x3.a.c(parcel, 16, this.zzo);
        x3.a.c(parcel, 18, this.zzp);
        x3.a.q(parcel, 19, this.zzq, false);
        x3.a.d(parcel, 21, this.zzr, false);
        x3.a.m(parcel, 22, this.zzs);
        x3.a.s(parcel, 23, this.zzt, false);
        x3.a.q(parcel, 24, this.zzu, false);
        x3.a.q(parcel, 25, this.zzv, false);
        x3.a.q(parcel, 26, this.zzw, false);
        x3.a.q(parcel, 27, this.zzx, false);
        x3.a.b(parcel, a10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzq(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, long j10, long j11, @Nullable String str5, boolean z10, boolean z11, long j12, @Nullable String str6, long j13, long j14, int i9, boolean z12, boolean z13, @Nullable String str7, @Nullable Boolean bool, long j15, @Nullable List list, @Nullable String str8, String str9, String str10, String str11) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = str3;
        this.zzj = j12;
        this.zzd = str4;
        this.zze = j10;
        this.zzf = j11;
        this.zzg = str5;
        this.zzh = z10;
        this.zzi = z11;
        this.zzk = str6;
        this.zzl = j13;
        this.zzm = j14;
        this.zzn = i9;
        this.zzo = z12;
        this.zzp = z13;
        this.zzq = str7;
        this.zzr = bool;
        this.zzs = j15;
        this.zzt = list;
        this.zzu = str8;
        this.zzv = str9;
        this.zzw = str10;
        this.zzx = str11;
    }
}
