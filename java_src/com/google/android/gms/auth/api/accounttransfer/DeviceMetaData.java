package com.google.android.gms.auth.api.accounttransfer;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
/* loaded from: classes2.dex */
public class DeviceMetaData extends AbstractSafeParcelable {
    @NonNull
    public static final Parcelable.Creator<DeviceMetaData> CREATOR = new e();

    /* renamed from: a  reason: collision with root package name */
    final int f7348a;
    private boolean zzb;
    private long zzc;
    private final boolean zzd;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DeviceMetaData(int i9, boolean z10, long j10, boolean z11) {
        this.f7348a = i9;
        this.zzb = z10;
        this.zzc = j10;
        this.zzd = z11;
    }

    public long I() {
        return this.zzc;
    }

    public boolean K() {
        return this.zzd;
    }

    public boolean L() {
        return this.zzb;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@NonNull Parcel parcel, int i9) {
        int a10 = x3.a.a(parcel);
        x3.a.k(parcel, 1, this.f7348a);
        x3.a.c(parcel, 2, L());
        x3.a.m(parcel, 3, I());
        x3.a.c(parcel, 4, K());
        x3.a.b(parcel, a10);
    }
}
