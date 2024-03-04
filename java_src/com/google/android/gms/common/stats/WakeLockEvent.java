package com.google.android.gms.common.stats;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import java.util.List;
@Deprecated
/* loaded from: classes2.dex */
public final class WakeLockEvent extends StatsEvent {
    @NonNull
    public static final Parcelable.Creator<WakeLockEvent> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    final int f7844a;
    private final long zzb;
    private int zzc;
    private final String zzd;
    private final String zze;
    private final String zzf;
    private final int zzg;
    private final List zzh;
    private final String zzi;
    private final long zzj;
    private int zzk;
    private final String zzl;
    private final float zzm;
    private final long zzn;
    private final boolean zzo;
    private long zzp = -1;

    /* JADX INFO: Access modifiers changed from: package-private */
    public WakeLockEvent(int i9, long j10, int i10, String str, int i11, List list, String str2, long j11, int i12, String str3, String str4, float f10, long j12, String str5, boolean z10) {
        this.f7844a = i9;
        this.zzb = j10;
        this.zzc = i10;
        this.zzd = str;
        this.zze = str3;
        this.zzf = str5;
        this.zzg = i11;
        this.zzh = list;
        this.zzi = str2;
        this.zzj = j11;
        this.zzk = i12;
        this.zzl = str4;
        this.zzm = f10;
        this.zzn = j12;
        this.zzo = z10;
    }

    @Override // com.google.android.gms.common.stats.StatsEvent
    public final int I() {
        return this.zzc;
    }

    @Override // com.google.android.gms.common.stats.StatsEvent
    public final long K() {
        return this.zzp;
    }

    @Override // com.google.android.gms.common.stats.StatsEvent
    public final long L() {
        return this.zzb;
    }

    @Override // com.google.android.gms.common.stats.StatsEvent
    @NonNull
    public final String M() {
        List list = this.zzh;
        String str = this.zzd;
        int i9 = this.zzg;
        String join = list == null ? "" : TextUtils.join(",", list);
        int i10 = this.zzk;
        String str2 = this.zze;
        if (str2 == null) {
            str2 = "";
        }
        String str3 = this.zzl;
        if (str3 == null) {
            str3 = "";
        }
        float f10 = this.zzm;
        String str4 = this.zzf;
        String str5 = str4 != null ? str4 : "";
        boolean z10 = this.zzo;
        return "\t" + str + "\t" + i9 + "\t" + join + "\t" + i10 + "\t" + str2 + "\t" + str3 + "\t" + f10 + "\t" + str5 + "\t" + z10;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@NonNull Parcel parcel, int i9) {
        int a10 = x3.a.a(parcel);
        x3.a.k(parcel, 1, this.f7844a);
        x3.a.m(parcel, 2, this.zzb);
        x3.a.q(parcel, 4, this.zzd, false);
        x3.a.k(parcel, 5, this.zzg);
        x3.a.s(parcel, 6, this.zzh, false);
        x3.a.m(parcel, 8, this.zzj);
        x3.a.q(parcel, 10, this.zze, false);
        x3.a.k(parcel, 11, this.zzc);
        x3.a.q(parcel, 12, this.zzi, false);
        x3.a.q(parcel, 13, this.zzl, false);
        x3.a.k(parcel, 14, this.zzk);
        x3.a.h(parcel, 15, this.zzm);
        x3.a.m(parcel, 16, this.zzn);
        x3.a.q(parcel, 17, this.zzf, false);
        x3.a.c(parcel, 18, this.zzo);
        x3.a.b(parcel, a10);
    }
}
