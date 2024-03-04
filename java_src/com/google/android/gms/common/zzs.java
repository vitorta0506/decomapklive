package com.google.android.gms.common;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.w1;
/* loaded from: classes2.dex */
public final class zzs extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzs> CREATOR = new u();
    private final String zza;
    private final n zzb;
    private final boolean zzc;
    private final boolean zzd;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzs(String str, IBinder iBinder, boolean z10, boolean z11) {
        this.zza = str;
        o oVar = null;
        if (iBinder != null) {
            try {
                h4.a c10 = w1.f(iBinder).c();
                byte[] bArr = c10 == null ? null : (byte[]) h4.b.D0(c10);
                if (bArr != null) {
                    oVar = new o(bArr);
                } else {
                    Log.e("GoogleCertificatesQuery", "Could not unwrap certificate");
                }
            } catch (RemoteException e10) {
                Log.e("GoogleCertificatesQuery", "Could not unwrap certificate", e10);
            }
        }
        this.zzb = oVar;
        this.zzc = z10;
        this.zzd = z11;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzs(String str, n nVar, boolean z10, boolean z11) {
        this.zza = str;
        this.zzb = nVar;
        this.zzc = z10;
        this.zzd = z11;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i9) {
        int a10 = x3.a.a(parcel);
        x3.a.q(parcel, 1, this.zza, false);
        n nVar = this.zzb;
        if (nVar == null) {
            Log.w("GoogleCertificatesQuery", "certificate binder is null");
            nVar = null;
        }
        x3.a.j(parcel, 2, nVar, false);
        x3.a.c(parcel, 3, this.zzc);
        x3.a.c(parcel, 4, this.zzd);
        x3.a.b(parcel, a10);
    }
}
