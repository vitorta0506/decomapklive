package com.google.android.gms.common;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
/* loaded from: classes2.dex */
public class Feature extends AbstractSafeParcelable {
    @NonNull
    public static final Parcelable.Creator<Feature> CREATOR = new u3.b();
    private final String zza;
    @Deprecated
    private final int zzb;
    private final long zzc;

    public Feature(@NonNull String str, int i9, long j10) {
        this.zza = str;
        this.zzb = i9;
        this.zzc = j10;
    }

    public Feature(@NonNull String str, long j10) {
        this.zza = str;
        this.zzc = j10;
        this.zzb = -1;
    }

    @NonNull
    public String I() {
        return this.zza;
    }

    public long K() {
        long j10 = this.zzc;
        return j10 == -1 ? this.zzb : j10;
    }

    public final boolean equals(@Nullable Object obj) {
        if (obj instanceof Feature) {
            Feature feature = (Feature) obj;
            if (((I() != null && I().equals(feature.I())) || (I() == null && feature.I() == null)) && K() == feature.K()) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return com.google.android.gms.common.internal.n.c(I(), Long.valueOf(K()));
    }

    @NonNull
    public final String toString() {
        n.a d10 = com.google.android.gms.common.internal.n.d(this);
        d10.a("name", I());
        d10.a("version", Long.valueOf(K()));
        return d10.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@NonNull Parcel parcel, int i9) {
        int a10 = x3.a.a(parcel);
        x3.a.q(parcel, 1, I(), false);
        x3.a.k(parcel, 2, this.zzb);
        x3.a.m(parcel, 3, K());
        x3.a.b(parcel, a10);
    }
}
