package com.google.android.gms.common;

import android.content.Context;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import h4.a;
/* loaded from: classes2.dex */
public final class zzo extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzo> CREATOR = new s();
    private final String zza;
    private final boolean zzb;
    private final boolean zzc;
    private final Context zzd;
    private final boolean zze;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzo(String str, boolean z10, boolean z11, IBinder iBinder, boolean z12) {
        this.zza = str;
        this.zzb = z10;
        this.zzc = z11;
        this.zzd = (Context) h4.b.D0(a.AbstractBinderC0438a.f(iBinder));
        this.zze = z12;
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [android.os.IBinder, h4.a] */
    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i9) {
        int a10 = x3.a.a(parcel);
        x3.a.q(parcel, 1, this.zza, false);
        x3.a.c(parcel, 2, this.zzb);
        x3.a.c(parcel, 3, this.zzc);
        x3.a.j(parcel, 4, h4.b.E0(this.zzd), false);
        x3.a.c(parcel, 5, this.zze);
        x3.a.b(parcel, a10);
    }
}
