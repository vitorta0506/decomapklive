package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.zzo;
import com.google.android.gms.common.zzq;
import com.google.android.gms.common.zzs;
/* loaded from: classes2.dex */
public final class u0 extends com.google.android.gms.internal.common.a implements w0 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public u0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.IGoogleCertificatesApi");
    }

    @Override // com.google.android.gms.common.internal.w0
    public final boolean U(zzs zzsVar, h4.a aVar) throws RemoteException {
        Parcel f10 = f();
        com.google.android.gms.internal.common.l.d(f10, zzsVar);
        com.google.android.gms.internal.common.l.e(f10, aVar);
        Parcel b10 = b(5, f10);
        boolean f11 = com.google.android.gms.internal.common.l.f(b10);
        b10.recycle();
        return f11;
    }

    @Override // com.google.android.gms.common.internal.w0
    public final boolean d() throws RemoteException {
        Parcel b10 = b(7, f());
        boolean f10 = com.google.android.gms.internal.common.l.f(b10);
        b10.recycle();
        return f10;
    }

    @Override // com.google.android.gms.common.internal.w0
    public final zzq o0(zzo zzoVar) throws RemoteException {
        Parcel f10 = f();
        com.google.android.gms.internal.common.l.d(f10, zzoVar);
        Parcel b10 = b(6, f10);
        zzq zzqVar = (zzq) com.google.android.gms.internal.common.l.a(b10, zzq.CREATOR);
        b10.recycle();
        return zzqVar;
    }

    @Override // com.google.android.gms.common.internal.w0
    public final zzq u0(zzo zzoVar) throws RemoteException {
        Parcel f10 = f();
        com.google.android.gms.internal.common.l.d(f10, zzoVar);
        Parcel b10 = b(8, f10);
        zzq zzqVar = (zzq) com.google.android.gms.internal.common.l.a(b10, zzq.CREATOR);
        b10.recycle();
        return zzqVar;
    }
}
