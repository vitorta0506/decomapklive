package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
/* loaded from: classes2.dex */
public class ConnectionTelemetryConfiguration extends AbstractSafeParcelable {
    @NonNull
    public static final Parcelable.Creator<ConnectionTelemetryConfiguration> CREATOR = new k1();
    private final RootTelemetryConfiguration zza;
    private final boolean zzb;
    private final boolean zzc;
    @Nullable
    private final int[] zzd;
    private final int zze;
    @Nullable
    private final int[] zzf;

    public ConnectionTelemetryConfiguration(@NonNull RootTelemetryConfiguration rootTelemetryConfiguration, boolean z10, boolean z11, @Nullable int[] iArr, int i9, @Nullable int[] iArr2) {
        this.zza = rootTelemetryConfiguration;
        this.zzb = z10;
        this.zzc = z11;
        this.zzd = iArr;
        this.zze = i9;
        this.zzf = iArr2;
    }

    public int I() {
        return this.zze;
    }

    @Nullable
    public int[] K() {
        return this.zzd;
    }

    @Nullable
    public int[] L() {
        return this.zzf;
    }

    public boolean M() {
        return this.zzb;
    }

    public boolean P() {
        return this.zzc;
    }

    @NonNull
    public final RootTelemetryConfiguration R() {
        return this.zza;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@NonNull Parcel parcel, int i9) {
        int a10 = x3.a.a(parcel);
        x3.a.p(parcel, 1, this.zza, i9, false);
        x3.a.c(parcel, 2, M());
        x3.a.c(parcel, 3, P());
        x3.a.l(parcel, 4, K(), false);
        x3.a.k(parcel, 5, I());
        x3.a.l(parcel, 6, L(), false);
        x3.a.b(parcel, a10);
    }
}
