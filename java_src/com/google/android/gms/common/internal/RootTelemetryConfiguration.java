package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
/* loaded from: classes2.dex */
public class RootTelemetryConfiguration extends AbstractSafeParcelable {
    @NonNull
    public static final Parcelable.Creator<RootTelemetryConfiguration> CREATOR = new z0();
    private final int zza;
    private final boolean zzb;
    private final boolean zzc;
    private final int zzd;
    private final int zze;

    public RootTelemetryConfiguration(int i9, boolean z10, boolean z11, int i10, int i11) {
        this.zza = i9;
        this.zzb = z10;
        this.zzc = z11;
        this.zzd = i10;
        this.zze = i11;
    }

    public int I() {
        return this.zzd;
    }

    public int K() {
        return this.zze;
    }

    public boolean L() {
        return this.zzb;
    }

    public boolean M() {
        return this.zzc;
    }

    public int getVersion() {
        return this.zza;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@NonNull Parcel parcel, int i9) {
        int a10 = x3.a.a(parcel);
        x3.a.k(parcel, 1, getVersion());
        x3.a.c(parcel, 2, L());
        x3.a.c(parcel, 3, M());
        x3.a.k(parcel, 4, I());
        x3.a.k(parcel, 5, K());
        x3.a.b(parcel, a10);
    }
}
