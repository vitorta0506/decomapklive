package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public final class a3 extends com.google.android.gms.internal.measurement.n0 implements p4.e {
    /* JADX INFO: Access modifiers changed from: package-private */
    public a3(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.internal.IMeasurementService");
    }

    @Override // p4.e
    public final void B(long j10, String str, String str2, String str3) throws RemoteException {
        Parcel f10 = f();
        f10.writeLong(j10);
        f10.writeString(str);
        f10.writeString(str2);
        f10.writeString(str3);
        E0(10, f10);
    }

    @Override // p4.e
    public final void B0(zzac zzacVar, zzq zzqVar) throws RemoteException {
        Parcel f10 = f();
        com.google.android.gms.internal.measurement.p0.e(f10, zzacVar);
        com.google.android.gms.internal.measurement.p0.e(f10, zzqVar);
        E0(12, f10);
    }

    @Override // p4.e
    public final void C(zzlc zzlcVar, zzq zzqVar) throws RemoteException {
        Parcel f10 = f();
        com.google.android.gms.internal.measurement.p0.e(f10, zzlcVar);
        com.google.android.gms.internal.measurement.p0.e(f10, zzqVar);
        E0(2, f10);
    }

    @Override // p4.e
    public final void K(zzq zzqVar) throws RemoteException {
        Parcel f10 = f();
        com.google.android.gms.internal.measurement.p0.e(f10, zzqVar);
        E0(20, f10);
    }

    @Override // p4.e
    public final List L(String str, String str2, boolean z10, zzq zzqVar) throws RemoteException {
        Parcel f10 = f();
        f10.writeString(str);
        f10.writeString(str2);
        com.google.android.gms.internal.measurement.p0.d(f10, z10);
        com.google.android.gms.internal.measurement.p0.e(f10, zzqVar);
        Parcel D0 = D0(14, f10);
        ArrayList createTypedArrayList = D0.createTypedArrayList(zzlc.CREATOR);
        D0.recycle();
        return createTypedArrayList;
    }

    @Override // p4.e
    public final void O(zzq zzqVar) throws RemoteException {
        Parcel f10 = f();
        com.google.android.gms.internal.measurement.p0.e(f10, zzqVar);
        E0(18, f10);
    }

    @Override // p4.e
    public final void a0(zzq zzqVar) throws RemoteException {
        Parcel f10 = f();
        com.google.android.gms.internal.measurement.p0.e(f10, zzqVar);
        E0(6, f10);
    }

    @Override // p4.e
    public final void c0(Bundle bundle, zzq zzqVar) throws RemoteException {
        Parcel f10 = f();
        com.google.android.gms.internal.measurement.p0.e(f10, bundle);
        com.google.android.gms.internal.measurement.p0.e(f10, zzqVar);
        E0(19, f10);
    }

    @Override // p4.e
    public final List d0(String str, String str2, String str3, boolean z10) throws RemoteException {
        Parcel f10 = f();
        f10.writeString(null);
        f10.writeString(str2);
        f10.writeString(str3);
        com.google.android.gms.internal.measurement.p0.d(f10, z10);
        Parcel D0 = D0(15, f10);
        ArrayList createTypedArrayList = D0.createTypedArrayList(zzlc.CREATOR);
        D0.recycle();
        return createTypedArrayList;
    }

    @Override // p4.e
    public final byte[] g0(zzaw zzawVar, String str) throws RemoteException {
        Parcel f10 = f();
        com.google.android.gms.internal.measurement.p0.e(f10, zzawVar);
        f10.writeString(str);
        Parcel D0 = D0(9, f10);
        byte[] createByteArray = D0.createByteArray();
        D0.recycle();
        return createByteArray;
    }

    @Override // p4.e
    public final String i0(zzq zzqVar) throws RemoteException {
        Parcel f10 = f();
        com.google.android.gms.internal.measurement.p0.e(f10, zzqVar);
        Parcel D0 = D0(11, f10);
        String readString = D0.readString();
        D0.recycle();
        return readString;
    }

    @Override // p4.e
    public final List l0(String str, String str2, String str3) throws RemoteException {
        Parcel f10 = f();
        f10.writeString(null);
        f10.writeString(str2);
        f10.writeString(str3);
        Parcel D0 = D0(17, f10);
        ArrayList createTypedArrayList = D0.createTypedArrayList(zzac.CREATOR);
        D0.recycle();
        return createTypedArrayList;
    }

    @Override // p4.e
    public final List s0(String str, String str2, zzq zzqVar) throws RemoteException {
        Parcel f10 = f();
        f10.writeString(str);
        f10.writeString(str2);
        com.google.android.gms.internal.measurement.p0.e(f10, zzqVar);
        Parcel D0 = D0(16, f10);
        ArrayList createTypedArrayList = D0.createTypedArrayList(zzac.CREATOR);
        D0.recycle();
        return createTypedArrayList;
    }

    @Override // p4.e
    public final void v(zzaw zzawVar, zzq zzqVar) throws RemoteException {
        Parcel f10 = f();
        com.google.android.gms.internal.measurement.p0.e(f10, zzawVar);
        com.google.android.gms.internal.measurement.p0.e(f10, zzqVar);
        E0(1, f10);
    }

    @Override // p4.e
    public final void y(zzq zzqVar) throws RemoteException {
        Parcel f10 = f();
        com.google.android.gms.internal.measurement.p0.e(f10, zzqVar);
        E0(4, f10);
    }
}
