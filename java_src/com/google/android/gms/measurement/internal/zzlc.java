package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
/* loaded from: classes2.dex */
public final class zzlc extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzlc> CREATOR = new h9();
    public final int zza;
    public final String zzb;
    public final long zzc;
    @Nullable
    public final Long zzd;
    @Nullable
    public final String zze;
    public final String zzf;
    @Nullable
    public final Double zzg;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzlc(int i9, String str, long j10, @Nullable Long l10, Float f10, @Nullable String str2, String str3, @Nullable Double d10) {
        this.zza = i9;
        this.zzb = str;
        this.zzc = j10;
        this.zzd = l10;
        if (i9 == 1) {
            this.zzg = f10 != null ? Double.valueOf(f10.doubleValue()) : null;
        } else {
            this.zzg = d10;
        }
        this.zze = str2;
        this.zzf = str3;
    }

    @Nullable
    public final Object I() {
        Long l10 = this.zzd;
        if (l10 != null) {
            return l10;
        }
        Double d10 = this.zzg;
        if (d10 != null) {
            return d10;
        }
        String str = this.zze;
        if (str != null) {
            return str;
        }
        return null;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i9) {
        h9.a(this, parcel, i9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzlc(i9 i9Var) {
        this(i9Var.f9494c, i9Var.f9495d, i9Var.f9496e, i9Var.f9493b);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzlc(String str, long j10, @Nullable Object obj, String str2) {
        com.google.android.gms.common.internal.p.f(str);
        this.zza = 2;
        this.zzb = str;
        this.zzc = j10;
        this.zzf = str2;
        if (obj == null) {
            this.zzd = null;
            this.zzg = null;
            this.zze = null;
        } else if (obj instanceof Long) {
            this.zzd = (Long) obj;
            this.zzg = null;
            this.zze = null;
        } else if (obj instanceof String) {
            this.zzd = null;
            this.zzg = null;
            this.zze = (String) obj;
        } else if (obj instanceof Double) {
            this.zzd = null;
            this.zzg = (Double) obj;
            this.zze = null;
        } else {
            throw new IllegalArgumentException("User attribute given of un-supported type");
        }
    }
}
